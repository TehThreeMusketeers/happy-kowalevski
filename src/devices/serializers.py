from rest_framework import serializers

from devices.models import Device, DeviceType

class DeviceSerializer(serializers.ModelSerializer):
    class Meta:
        model = Device 
        fields = ('deviceId','user','deviceType',)

class DeviceTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = DeviceType
        fields = ('value',)

