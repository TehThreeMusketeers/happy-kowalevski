import os

from django.conf import settings
from django.http import HttpResponse
from django.views.generic import View
from knox.auth import TokenAuthentication
from rest_framework import status
from rest_framework.generics import GenericAPIView
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response


class DeviceView(GenericAPIView):
    """Return protected data main page."""

    authentication_classes = (TokenAuthentication,)
    permission_classes = (IsAuthenticated,)

    def get(self, request):
        """Process GET request and return a list of users devices"""

        data = {
            'data': 'THIS IS THE PROTECTED STRING FROM SERVER',
        }

        return Response(data, status=status.HTTP_200_OK)

    def post(self, request):
        """Process POST request and create device for current user"""

        data = {
            'data': 'THIS IS THE PROTECTED STRING FROM SERVER',
        }

        return Response(data, status=status.HTTP_201_CREATED)
