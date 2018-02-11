from knox.auth import TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet
from rest_framework.exceptions import ValidationError, PermissionDenied
from rest_framework.generics import GenericAPIView
from rest_framework.mixins import CreateModelMixin, ListModelMixin
from lib.utils import AtomicMixin
from .serializers import DeviceSerializer, DeviceTypeSerializer, DeviceGroupSerializer, DeviceGroupTypeSerializer
from .models import Device, DeviceType, DeviceGroup, DeviceGroupType


class DeviceViewSet(ModelViewSet):
    serializer_class = DeviceSerializer
    queryset = Device.objects.all()

    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get_queryset(self):
        user = self.request.user

        return Device.objects.filter(user=user)

''' 
  This should be ADMIN only 
'''
class DeviceTypeViewSet(ModelViewSet):
    serializer_class = DeviceTypeSerializer
    queryset = DeviceType.objects.all()

    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

''' 
  This should be ADMIN only 
'''
class DeviceGroupTypeViewSet(ModelViewSet):  
    serializer_class = DeviceGroupTypeSerializer
    queryset = DeviceGroupType.objects.all()

    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

class DeviceGroupView(AtomicMixin, GenericAPIView, CreateModelMixin, ListModelMixin):
    serializer_class = DeviceGroupSerializer

    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get_queryset(self):
        ''' Gets all groups owned by the current user '''
        user = self.request.user

        return DeviceGroup.objects.filter(user=user)

    def post(self, request):
        ''' Creates a device group from a list of devices '''

        if 'devices' not in request.data:
            raise ValidationError({'devices': ["Required: array of device Id's",]})
        elif len(request.data['devices']) <  1:
            raise ValidationError({'devices': ["Required: array must have length of at least 1",]})

        userDevices = Device.objects.filter(user=self.request.user)

        deviceIds = set(device.deviceId for device in userDevices)
        for device in request.data['devices']:
            if device not in deviceIds:
                raise PermissionDenied({'devices': ["You have specified a device you do not own"]})

        return self.create(request) 

    def get(self, request):
        return self.list(request)

