from rest_framework import serializers

from devices.models import Device, DeviceType, DeviceGroup, DeviceGroupType, DeviceGroupTypeState

class DeviceSerializer(serializers.ModelSerializer):
    class Meta:
        model = Device 
        fields = ('id','deviceId','deviceType','deviceName','group',)

    def create(self, validated_data):
        return Device.objects.create(user=self.context['request'].user,**validated_data)

class DeviceTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = DeviceType
        fields = ('id','value',)

    def create(self, validated_data):
        return DeviceType.objects.create(**validated_data)

class DeviceGroupTypeStateSerializer(serializers.ModelSerializer):
    class Meta:
        model = DeviceGroupTypeState
        fields = ('id','state',)

    def create(self, validated_data):
        print("whaaaa!")
        return DeviceGroupTypeState.objects.create(**validated_data)

class DeviceGroupTypeSerializer(serializers.ModelSerializer):
    states = DeviceGroupTypeStateSerializer(many=True)

    class Meta:
        model = DeviceGroupType
        fields = ('id','name','states',)

    def create(self, validated_data):
        print("whaaaa!")
        states_data = validated_data.pop('states')
        groupType = DeviceGroupType.objects.create(**validated_data)
        for state_data in states_data:
            DeviceGroupTypeState.objects.create(devicegrouptype=groupType, **state_data)
        return groupType 

class DeviceGroupSerializer(serializers.ModelSerializer):
    class Meta:
        model = DeviceGroup
        fields = ('id','name','groupType',)

    def create(self, validated_data):
        request = self.context['request']
        group = DeviceGroup.objects.create(user=request.user,**validated_data)

        for deviceId in request.data['devices']:
            device = Device.objects.get(deviceId=deviceId)
            device.group = group
            device.save()

        return group 

