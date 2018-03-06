import uuid

import base64
from django.core.urlresolvers import reverse
from rest_framework import status
from rest_framework.test import APITestCase

from lib.testutils import CustomTestCase
from tests.python.devices.test_serializers import *
from .test_models import *
from tests.python.accounts.test_serializers import UserRegistrationSerializerTest, UserSerializerTest
from .test_models import UserFactory


def get_basic_auth_header(username, password):
    return 'Basic %s' % base64.b64encode(('%s:%s' % (username, password)).encode('ascii')).decode()

class DeviceTests(CustomTestCase, APITestCase):
    INVALID_DATA_DICT = [
        {'data': {'email': 'emailwilllogin@test.com',
                  'password': 'teste'},
         'error': ('non_field_errors', ['Unable to login with provided credentials.']),
         'label': 'Invalid login credentials.',
         'method': 'POST',
         'status': status.HTTP_401_UNAUTHORIZED
         },
    ]
    VALID_DATA_DICT = [
        {'email': 'emailwilllogin@test.com', 'password': 'test'},
    ]

    def setUp(self):
        self.user = UserFactory.create(email='emailwilllogin@test.com',
                                       first_name='Test',
                                       last_name='User')
        self.user.set_password('test')
        self.user.save()

    def test_account_login_successful_and_get_temps(self):
        # Ensure we can login with given credentials.
        url = reverse('accounts:createSession')
        self.client.credentials(HTTP_AUTHORIZATION=get_basic_auth_header('emailwilllogin@test.com', 'test'))
        response = self.client.post(url, format='json')
        self.assertTrue('token' in response.data)
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.client.credentials(HTTP_AUTHORIZATION='Token {}'.format(response.data['token']))

        # user confirmed account unsuccessfully
        url = reverse('devices:getTemps')
        response = self.client.get(url)
        self.assertContains(response.data, 'results')

    def test_account_login_successful_and_get_sounds(self):
        # Ensure we can login with given credentials.
        url = reverse('accounts:createSession')
        self.client.credentials(HTTP_AUTHORIZATION=get_basic_auth_header('emailwilllogin@test.com', 'test'))
        response = self.client.post(url, format='json')
        self.assertTrue('token' in response.data)
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.client.credentials(HTTP_AUTHORIZATION='Token {}'.format(response.data['token']))

        # user confirmed account unsuccessfully
        url = reverse('devices:getSounds')
        response = self.client.get(url)
        self.assertContains(response.data, 'results')

    def test_account_login_successful_and_get_lights(self):
        # Ensure we can login with given credentials.
        url = reverse('accounts:createSession')
        self.client.credentials(HTTP_AUTHORIZATION=get_basic_auth_header('emailwilllogin@test.com', 'test'))
        response = self.client.post(url, format='json')
        self.assertTrue('token' in response.data)
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.client.credentials(HTTP_AUTHORIZATION='Token {}'.format(response.data['token']))

        # user confirmed account unsuccessfully
        url = reverse('devices:getLights')
        response = self.client.get(url)
        self.assertContains(response.data, 'results')
