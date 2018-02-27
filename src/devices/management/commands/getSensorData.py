from django.core.management.base import BaseCommand, CommandError
from devices.models import *
from devices.serializers import *
import common.util.particle as Particle 

class Command(BaseCommand):
    help = 'Gets sensor data for all devices. Should not be run often'

    def handle(self, *args, **options):
        devices = Device.objects.all()

        for device in devices:
            response = Particle.getDeviceInfo(device.deviceId)
            if 'ok' in response:
                print("Oh no, device not found")
                continue
            if 'variables' in response:
                for variable in response['variables']:
                    print(variable)
                    varResp = Particle.getDeviceVariable(device.deviceId,variable)
                    varResp['device'] = device.id
                    if variable == 'light':
                        serializer = AmbLightSerializer(data=varResp)
                    if variable == 'sound':
                        serializer = SoundSerializer(data=varResp)
                    if variable == 'temp':
                        serializer = TempSerializer(data=varResp)
                    serializer.is_valid()
                    serializer.save()

                        



