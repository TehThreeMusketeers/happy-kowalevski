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


class TempReadingSerializer(serializers.ModelSerializer):
    class Meta:
        model = TempReading
        fields = ('device','value',)

class HumReadingSerializer(serializers.ModelSerializer):
    class Meta:
        model = HumReading
        fields = ('device', 'value')

class AmbLightReadingSerializer(serializers.ModelSerializer):
    class Meta:
        model = AmbLightReading
        fields = ('device','value')

class MovementReadingSerializer(serializers:ModelSerializer):
    class Meta:
        model = MovementReading
        fields = ('device',)
