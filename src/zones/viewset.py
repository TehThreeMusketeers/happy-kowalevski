from knox.auth import TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.viewsets import ModelViewSet
from rest_framework.generics import GenericAPIView
from rest_framework.mixins import CreateModelMixin, ListModelMixin, RetrieveModelMixin, UpdateModelMixin
from lib.utils import AtomicMixin
from zones.serializers import * 
from zones.models import *

class ZoneViewSet(ModelViewSet):
    serializer_class = ZoneSerializer
    queryset = Zone.objects.all()

    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get_queryset(self):
        user = self.request.user

        return Zone.objects.filter(user=user)

    def perform_create(self, serializer):
        try:
            serializer.save()
        except:
            raise PermissionDenied('You cannot create more than one notifyToken. Use PUT to update the current one')

class UserLocationView(AtomicMixin, GenericAPIView, CreateModelMixin, RetrieveModelMixin, UpdateModelMixin):
    serializer_class = UserLocationSerializer

    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get_queryset(self):
        ''' Gets current zone of the current user '''
        user = self.request.user

        return Zone.objects.filter(user=user)
