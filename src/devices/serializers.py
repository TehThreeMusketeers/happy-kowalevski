from rest_framework import serializers

from devices.models import Device, DeviceType

class DeviceSerializer(serializers.ModelSerializer):
    class Meta:
        model = Device 
        fields = ('id','deviceId','deviceType','deviceName',)

    def create(self, validated_data):
        return Device.objects.create(user=self.context['request'].user,**validated_data)

class DeviceTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = DeviceType
        fields = ('id','value',)

    def create(self, validated_data):
        return DeviceType.objects.create(**validated_data)

