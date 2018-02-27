from knox.auth import TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet
from rest_framework.exceptions import ValidationError, PermissionDenied, MethodNotAllowed, NotFound
from rest_framework.generics import GenericAPIView
from rest_framework.mixins import CreateModelMixin, ListModelMixin, RetrieveModelMixin, UpdateModelMixin
from datetime import datetime, timezone, timedelta
from lib.utils import AtomicMixin
from .serializers import *
from .models import *


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

  For creating functions attached to a device type
'''
class DeviceTypeFunctionViewSet(ModelViewSet):
    serializer_class = DeviceTypeFuncSerializer

    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

#    def post(self, request):


''' 
  This should be ADMIN only 

  For creating types of groups
'''
class DeviceGroupTypeViewSet(ModelViewSet):  
    serializer_class = DeviceGroupTypeSerializer
    queryset = DeviceGroupType.objects.all()

    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

'''
  For creating trigger conditions attached to a group
'''
class DeviceGroupTriggerViewSet(ModelViewSet):
    serializer_class = DeviceGroupTriggerSerializer

#    authentication_classes = (TokenAuthentication,) //fix later
#    permission_classes = (IsAuthenticated,) //fix later
#    TODO only get should be allowed without authentication

    def get_queryset(self):
        groupId = self.kwargs.get('groupId')
        return DeviceGroupTrigger.objects.filter(group=groupId)

    def perform_create(self, serializer):
        try:
            group=DeviceGroup.objects.get(pk=self.kwargs.get('groupId'))
        except:
            raise ValidationError({'group': ["Invalid group ID",]})
        serializer.save(group=group)

'''
  Gets list of available comparison operators
'''
class DeviceGroupTriggerOperatorView(GenericAPIView, ListModelMixin):
    serializer_class = DeviceGroupTriggerOperatorSerializer

    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get_queryset(self):
        return DeviceGroupTriggerOperator.objects.all()

    def get(self, request):
        return self.list(request)


'''
   For getting a list of functions a group has
'''
class DeviceGroupFunctionView(GenericAPIView, ListModelMixin):
    serializer_class = DeviceTypeFuncSerializer

    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get_queryset(self):

        groupId = self.kwargs['pk']
        devices = Device.objects.filter(group=groupId)

        return DeviceTypeFunc.objects.all()
#        for device in devices: TODO
#            functions.append(DeviceTypeFunc.objects.filter(
#
#        functions = DeviceTypeFunc.objects.filter(

class DeviceEventViewSet(ModelViewSet):
    serializer_class = DeviceEventSerializer
    queryset = DeviceEvent.objects.all()

#    authentication_classes = (TokenAuthentication,)
#    permission_classes = (IsAuthenticated,)
#   TODO ..... bad bad bad fix auth

class DeviceGroupView(AtomicMixin, GenericAPIView, CreateModelMixin, ListModelMixin, RetrieveModelMixin, UpdateModelMixin):
    serializer_class = DeviceGroupSerializer

    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get_queryset(self):
        ''' Gets all groups owned by the current user '''
        user = self.request.user

        return DeviceGroup.objects.filter(user=user)

    def post(self, request, pk=None):
        ''' Creates a device group from a list of devices '''
        if pk is not None:
            raise MethodNotAllowed('POST')

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

    def get(self, request, pk=None):
        if pk:
            return self.retrieve(request, pk)
        return self.list(request)

    def patch(self, request, pk):
        return self.partial_update(request,pk)

class DeviceTempView(AtomicMixin, GenericAPIView, ListModelMixin):
    serializer_class = TempSerializer

    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get_queryset(self):
        device = Device.objects.filter(id=self.kwargs['pk'],user=self.request.user)
        daysSince = datetime.timedelta(days=int(self.request.GET.get('since','1')))
        return TempReading.objects.filter(device=device,date__gte=datetime.datetime.now()-daysSince)

    def get(self, request, pk):
        return self.list(request)

class DeviceSoundView(AtomicMixin, GenericAPIView, ListModelMixin):
    serializer_class = SoundSerializer

    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get_queryset(self):
        device = Device.objects.filter(id=self.kwargs['pk'],user=self.request.user)
        daysSince = datetime.timedelta(days=int(self.request.GET.get('since','1')))
        return SoundReading.objects.filter(device=device,date__gte=datetime.datetime.now()-daysSince)

    def get(self, request, pk):
        return self.list(request)

class DeviceAmbLightView(AtomicMixin, GenericAPIView, ListModelMixin):
    serializer_class = AmbLightSerializer

    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get_queryset(self):
        device = Device.objects.filter(id=self.kwargs['pk'],user=self.request.user)
        daysSince = datetime.timedelta(days=int(self.request.GET.get('since','1')))
        return AmbLightReading.objects.filter(device=device,date__gte=datetime.datetime.now()-daysSince)

    def get(self, request, pk):
        return self.list(request)
