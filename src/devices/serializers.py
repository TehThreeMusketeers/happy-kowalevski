from rest_framework import serializers
from devices.models import *
import common.util.particle as Particle 

class DeviceSerializer(serializers.ModelSerializer):
    class Meta:
        model = Device 
        fields = ('id','deviceId','deviceType','deviceName','group',)

    def create(self, validated_data):
        deviceType = DeviceType.objects.get(pk = validated_data.get('deviceType'))
        Particle.setDeviceFirmware(validated_data.get('deviceId'),deviceType.firmwareVersion)
        # We just hope this works...

        return Device.objects.create(user=self.context['request'].user,**validated_data)

    def update(self, instance, validated_data):
        deviceType = validated_data.get('deviceType', instance.deviceType)

        if deviceType != instance.deviceType:
            # The deviceType has changed! Flash the device with the new firmware...
            Particle.setDeviceFirmware(instance.deviceId,deviceType.firmwareVersion)
            # We just hope this works...
            print("deviceType changed!")

        instance.deviceType = deviceType
        instance.group = validated_data.get('group', instance.group)
        instance.deviceName = validated_data.get('deviceName', instance.deviceName)

        instance.save()
        return instance

class DeviceEventSerializer(serializers.ModelSerializer):
    class Meta:
        model = DeviceEvent
        fields = ('id','device','trigger','date',)
        read_only_fields = ('date',)

    def create(self, validated_data):
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
        fields = ('id','funcName',)

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

class DeviceGroupTriggerOperatorSerializer(serializers.ModelSerializer):
    class Meta:
        model = DeviceGroupTriggerOperator
        fields = ('id','operator',)
    
class DeviceGroupTriggerLocalActionSerializer(serializers.ModelSerializer):
    class Meta:
        model = DeviceGroupTriggerLocalAction
        fields = ('id','function',)

    def create(self, validated_data):
        return DeviceGroupTriggerLocalAction.objects.create(**validated_data)

class DeviceGroupTriggerSerializer(serializers.ModelSerializer):
    localActions = DeviceGroupTriggerLocalActionSerializer(many=True)
    group = serializers.ReadOnlyField()

    class Meta:
        model = DeviceGroupTrigger
        fields = ('id','valuetype','state','operator','group','value','localActions',)

    def create(self, validated_data):
        actions_data = validated_data.pop('localActions')
        trigger = DeviceGroupTrigger.objects.create(**validated_data)
        for action_data in actions_data:
            DeviceGroupTriggerLocalAction.objects.create(trigger=trigger, **action_data)
        return trigger 

    def to_representation(self, instance):
        data = super(DeviceGroupTriggerSerializer, self).to_representation(instance)
        data.update(group=instance.group.id)
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

