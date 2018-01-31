from django.shortcuts import get_object_or_404
from django_rest_logger import log
from django.conf import settings
from knox.auth import TokenAuthentication
from knox.models import AuthToken
from rest_framework import status
from rest_framework.authentication import BasicAuthentication
from rest_framework.generics import GenericAPIView
from rest_framework.mixins import CreateModelMixin
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response

from accounts.models import User
from accounts.serializers import UserRegistrationSerializer, UserSerializer
from lib.utils import AtomicMixin

import requests, json
from requests.auth import HTTPBasicAuth

class UserView(AtomicMixin, CreateModelMixin, GenericAPIView):
    serializer_class = UserRegistrationSerializer
    authentication_classes = ()

    def post(self, request):
        """ Creates a user locally & on the particle cloud"""

        if 'email' not in request.data:
            return Response(
                    data=json.loads("message" : "Email argument missing."),
                    status=status.HTTP_400_BAD_REQUEST,
                    content_type=response.headers['Content-Type'])

        if (response.headers['Content-Type'] == 'application/x-www-form-urlencoded'):
            return Response(
                    data=json.loads("message" : "Content type must be application/json"),
                    status=status.HTTP_405_METHOD_NOT_ALLOWED,
                    content_type=response.headers['Content-Type'])

        response = requests.post("https://api.particle.io/v1/products/" +
                      str(settings.PARTICLE_PRODUCT_ID) + "/customers",
                      auth=(settings.PARTICLE_API_CLIENT,
                              settings.PARTICLE_API_KEY),
                      json={
                        "email": request.data['email'], 
                        "no_password": "true"
                    })

        if response.status_code == 201:
            print("Access token is: " + response.json()['access_token'])
            request.data['access_token'] = response.json()['access_token']
            request.data['refresh_token'] = response.json()['refresh_token']

            return self.create(request)

        print(response.content)
        return Response(
                    data=json.loads(response.content.decode()),
                    status=response.status_code,
                    content_type=response.headers['Content-Type']
                )


class UserLoginView(GenericAPIView):
    serializer_class = UserSerializer
    authentication_classes = (BasicAuthentication,)
    permission_classes = (IsAuthenticated,)

    def post(self, request):
        """User login with username and password."""
        token = AuthToken.objects.create(request.user)
        return Response({
            'user': self.get_serializer(request.user).data,
            'token': token
        })


class UserConfirmEmailView(AtomicMixin, GenericAPIView):
    serializer_class = None
    authentication_classes = ()

    def get(self, request, activation_key):
        """
        View for confirm email.

        Receive an activation key as parameter and confirm email.
        """
        user = get_object_or_404(User, activation_key=str(activation_key))
        if user.confirm_email():
            return Response(status=status.HTTP_200_OK)

        log.warning(message='Email confirmation key not found.',
                    details={'http_status_code': status.HTTP_404_NOT_FOUND})
        return Response(status=status.HTTP_404_NOT_FOUND)


class UserEmailConfirmationStatusView(GenericAPIView):
    serializer_class = None
    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get(self, request):
        """Retrieve user current confirmed_email status."""
        user = self.request.user
        return Response({'status': user.confirmed_email}, status=status.HTTP_200_OK)
