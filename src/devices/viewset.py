from knox.auth import TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet
from .serializers import DeviceSerializer, DeviceTypeSerializer
from .models import Device, DeviceType


class DeviceViewSet(ModelViewSet):
    serializer_class = DeviceSerializer
    queryset = Device.objects.all()

    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get_queryset(self):
        user = self.request.user

        return Device.objects.filter(user=user)


class DeviceTypeViewSet(ModelViewSet):
    serializer_class = DeviceTypeSerializer
    queryset = DeviceType.objects.all()

    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)
