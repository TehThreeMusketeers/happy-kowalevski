from rest_framework import serializers
from devices.models import *
from accounts.models import NotificationToken
from push_notifications.models import APNSDevice, GCMDevice
import common.util.particle as Particle

class DeviceSerializer(serializers.ModelSerializer):
    class Meta:
        model = Device
        fields = ('id','deviceId','deviceType','deviceName','group',)

    def create(self, validated_data):
        deviceType = DeviceType.objects.get(pk = validated_data.get('deviceType'))
        Particle.setDeviceFirmware(validated_data.get('deviceId'),deviceType.firmwareVersion)
        # We just hope this works...
        # TODO Add call to configure photon

        return Device.objects.create(user=self.context['request'].user,**validated_data)

    def update(self, instance, validated_data):
        deviceType = validated_data.get('deviceType', instance.deviceType)

        if deviceType != instance.deviceType:
            # The deviceType has changed! Flash the device with the new firmware...
            Particle.setDeviceFirmware(instance.deviceId,deviceType.firmwareVersion)
            # We just hope this works...
            print("deviceType changed!")
            
        # TODO Add call to configure photon

        instance.deviceType = deviceType
        instance.group = validated_data.get('group', instance.group)
        instance.deviceName = validated_data.get('deviceName', instance.deviceName)

        instance.save()
        return instance

    def to_representation(self, instance):
        data = super(DeviceSerializer, self).to_representation(instance)
        data.update(group=instance.group.id)
        response = Particle.getDeviceInfo(data['deviceId'])
        if 'ok' in response:
            print("Oh no, device not found")
        elif {'variables', 'functions'} <= set(response):
            if 'variables' in response:
                data['variables'] = response['variables']
            if 'functions' in response:
                data['variables'] = response['variables']
        return data

class DeviceEventSerializer(serializers.ModelSerializer):
    class Meta:
        model = DeviceEvent
        fields = ('id','device','trigger','date',)
        read_only_fields = ('date',)

    def create(self, validated_data):
        # get trigger and dispatch any actions in the group
        # dispatch any actions in the event
        trigger = validated_data['trigger']
        actions = TriggerLocalAction.objects.filter(trigger=trigger.id)
        devices = Device.objects.filter(group=trigger.group_id)
        for action in actions:
            for device in devices:
                Particle.callDeviceFunction(device.deviceId, action.function)

        # Send notification 
        token = NotificationToken.objects.filter(user=device.user).first()
        if token is not None:
            regToken = token.token
            gcmdevice = GCMDevice.objects.get(registration_id=regToken)
            # The first argument will be sent as "message" to the intent extras Bundle
            # Retrieve it with intent.getExtras().getString("message")
            device = validated_data['device']
            gcmdevice.send_message("An event occurred on " + device.deviceName + " with ID " + str(device.id))

        return DeviceEvent.objects.create(**validated_data)


class DeviceTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = DeviceType
        fields = ('id','name','firmwareVersion',)

    def create(self, validated_data):
        return DeviceType.objects.create(**validated_data)

class DeviceTypeFuncSerializer(serializers.ModelSerializer):
    device = DeviceTypeSerializer(read_only=True, many=True)

    class Meta:
        model = DeviceTypeFunc
        fields = ('id','funcName','param',)

class DeviceGroupTypeStateSerializer(serializers.ModelSerializer):
    class Meta:
        model = DeviceGroupTypeState
        fields = ('id','state',)

    def create(self, validated_data):
        return DeviceGroupTypeState.objects.create(**validated_data)

class DeviceGroupTypeVariableSerializer(serializers.ModelSerializer):
    class Meta:
        model = DeviceGroupTypeVariable
        fields = ('id','variable',)

    def create(self, validated_data):
        return DeviceGroupTypeState.objects.create(**validated_data)

class DeviceGroupTypeSerializer(serializers.ModelSerializer):
    states = DeviceGroupTypeStateSerializer(many=True)
    variables = DeviceGroupTypeVariableSerializer(many=True) #TODO This should be many to many, fix later

    class Meta:
        model = DeviceGroupType
        fields = ('id','name','states','variables',)

    def create(self, validated_data):
        states_data = validated_data.pop('states')
        variables_data = validated_data.pop('variables')
        groupType = DeviceGroupType.objects.create(**validated_data)
        for state_data in states_data:
            DeviceGroupTypeState.objects.create(devicegrouptype=groupType, **state_data)
        for variable_data in variables_data:
            DeviceGroupTypeVariable.objects.create(devicegrouptype=groupType, **variable_data)
        return groupType


class DeviceGroupSerializer(serializers.ModelSerializer):
    class Meta:
        model = DeviceGroup
        fields = ('id','name','groupType','state',)

    def create(self, validated_data):
        request = self.context['request']
        group = DeviceGroup.objects.create(user=request.user,**validated_data)

        for deviceId in request.data['devices']:
            device = Device.objects.get(deviceId=deviceId)
            device.group = group
            device.save()

        group.state = validated_data.pop('state')

        return group

    def update(self, instance, validated_data):
        state = validated_data.get('state', instance.state)

        if state != instance.state:
            # The state has changed! Tell all devices in the group about it
            # We just hope this works...
            print("state changed!")

        instance.state = state
        instance.name = validated_data.get('name', instance.name)

        instance.save()
        return instance

class TriggerOperatorSerializer(serializers.ModelSerializer):
    class Meta:
        model = TriggerOperator
        fields = ('id','operator',)

class TriggerLocalActionSerializer(serializers.ModelSerializer):
    class Meta:
        model = TriggerLocalAction
        fields = ('id','function','param',)

    def create(self, validated_data):
        return TriggerLocalAction.objects.create(**validated_data)

class TriggerSerializer(serializers.ModelSerializer):
    localActions = TriggerLocalActionSerializer(many=True)
    group = serializers.ReadOnlyField()
    device = serializers.ReadOnlyField()

    class Meta:
        model = Trigger
        fields = ('id','valuetype','state','operator','device','group','value','localActions',)

    def create(self, validated_data):
        actions_data = validated_data.pop('localActions')
        trigger = Trigger.objects.create(**validated_data)
        for action_data in actions_data:
            TriggerLocalAction.objects.create(trigger=trigger, **action_data)
        return trigger

    def to_representation(self, instance):
        data = super(TriggerSerializer, self).to_representation(instance)
        if instance.group is not None:
            data.update(group=instance.group.id)
        elif instance.device is not None:
            data.update(device=instance.device.id)
        data.update(operator=instance.operator.operator)
        data.update(valuetype=instance.valuetype.variable)
        data.update(state=instance.state.state)
        return data

class TempSerializer(serializers.ModelSerializer):
    class Meta:
        model = TempReading
        fields = ('id','device','result','date',)

class SoundSerializer(serializers.ModelSerializer):
    class Meta:
        model = SoundReading
        fields = ('id','device','result','date',)

class AmbLightSerializer(serializers.ModelSerializer):
    class Meta:
        model = AmbLightReading
        fields = ('id','device','result','date',)

