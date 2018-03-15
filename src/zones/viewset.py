from knox.auth import TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet
from rest_framework.generics import GenericAPIView
from rest_framework.mixins import CreateModelMixin, ListModelMixin, RetrieveModelMixin, UpdateModelMixin
from rest_framework.exceptions import ValidationError, NotFound
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

    def get(self, request, pk=None):
        userloc = UserLocation.objects.filter(user=self.request.user).first()
        resp = UserLocationSerializer(userloc).data
        resp.pop('id',None)
        return Response(resp)

    def post(self, request,pk=None):
        try: 
            userloc = self.create(request)
        except:
            raise ValidationError({'myzone': ["Already exists, use PUT to update",]})
        return userloc 

    def put(self, request, pk=None):
        zone = Zone.objects.filter(id=request.data['zone']).first()
        if request.data['zone'] == None:
            raise ValidationError("Cannot be None")
        if zone.user.id == self.request.user.id:
            userloc = UserLocation.objects.filter(user=self.request.user).first()
            userloc.zone = zone 
            userloc.save()
            resp = UserLocationSerializer(userloc).data
            resp.pop('id',None)
            return Response(resp)
        raise NotFound()

    def delete(self, request, pk=None):
        userloc = UserLocation.objects.filter(user=self.request.user).first()
        userloc.delete()
        resp = UserLocationSerializer(userloc).data
        resp.pop('id',None)
        return Response(resp)


