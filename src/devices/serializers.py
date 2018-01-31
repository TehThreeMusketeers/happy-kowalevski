from rest_framework import serializers

from devices.models import Device

class DeviceSerializer(serializers.ModelSerializer):
    #TODO how do relations work with serializers?
    class Meta:
        model = Device 
        fields = ('deviceId')

