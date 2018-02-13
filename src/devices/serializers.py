from rest_framework import serializers

from devices.models import Device, DeviceType, DeviceGroup, DeviceGroupType, DeviceGroupTypeState, DeviceGroupTypeVariable
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
        

class DeviceTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = DeviceType
        fields = ('id','name','firmwareVersion',)

    def create(self, validated_data):
        return DeviceType.objects.create(**validated_data)

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

