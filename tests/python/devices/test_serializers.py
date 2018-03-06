from rest_framework import status
from rest_framework.test import APITestCase

from devices.serializers import LightSerializer, SoundSerializer, TempSerializer
from lib.testutils import CustomTestCase
from tests.python.devices.test_models import *

class LightSerializerTest(CustomTestCase, APITestCase):
    INVALID_DATA_DICT = [
        {'data': {'result': 'abcd'},
         'error': ('Invalid value', ['Not a valid datatype for this variable']),
         'label': 'Invalid value',
         'method': 'POST',
         'status': status.HTTP_400_BAD_REQUEST
         },
    ]
    VALID_DATA_DICT = [
        {'result': '1.234'}
    ]

    def setUp(self):
        self.required_fields = ['result']
        self.not_required_fields = ['id']
        self.user = LightReadingFactory.create(result='1.23')

    def test_fields(self):
        serializer = LightSerializer()
        self.assert_fields_required(True, serializer, self.required_fields)
        self.assert_fields_required(False, serializer, self.not_required_fields)
        self.assertEqual(len(serializer.fields), len(self.required_fields) + len(self.not_required_fields))

    def test_invalid_data(self):
        serializer = LightSerializer()
        self.assert_invalid_data(serializer, self.INVALID_DATA_DICT)

    def test_validate_success(self):
        serializer = LightSerializer()
        self.assert_valid_data(serializer, self.VALID_DATA_DICT)

class SoundSerializerTest(CustomTestCase, APITestCase):
    INVALID_DATA_DICT = [
        {'data': {'result': 'abcd'},
         'error': ('Invalid value', ['Not a valid datatype for this variable']),
         'label': 'Invalid value',
         'method': 'POST',
         'status': status.HTTP_400_BAD_REQUEST
         },
    ]
    VALID_DATA_DICT = [
        {'result': '1.234'}
    ]

    def setUp(self):
        self.required_fields = ['result']
        self.not_required_fields = ['id']
        self.user = SoundReadingFactory.create(result='1.23')

    def test_fields(self):
        serializer = SoundSerializer()
        self.assert_fields_required(True, serializer, self.required_fields)
        self.assert_fields_required(False, serializer, self.not_required_fields)
        self.assertEqual(len(serializer.fields), len(self.required_fields) + len(self.not_required_fields))

    def test_invalid_data(self):
        serializer = SoundSerializer()
        self.assert_invalid_data(serializer, self.INVALID_DATA_DICT)

    def test_validate_success(self):
        serializer = SoundSerializer()
        self.assert_valid_data(serializer, self.VALID_DATA_DICT)

class TempSerializerTest(CustomTestCase, APITestCase):
    INVALID_DATA_DICT = [
        {'data': {'result': 'abcd'},
         'error': ('Invalid value', ['Not a valid datatype for this variable']),
         'label': 'Invalid value',
         'method': 'POST',
         'status': status.HTTP_400_BAD_REQUEST
         },
    ]
    VALID_DATA_DICT = [
        {'result': '1.234'}
    ]

    def setUp(self):
        self.required_fields = ['result']
        self.not_required_fields = ['id']
        self.user = TempReadingFactory.create(result='1.23')

    def test_fields(self):
        serializer = TempSerializer()
        self.assert_fields_required(True, serializer, self.required_fields)
        self.assert_fields_required(False, serializer, self.not_required_fields)
        self.assertEqual(len(serializer.fields), len(self.required_fields) + len(self.not_required_fields))

    def test_invalid_data(self):
        serializer = TempSerializer()
        self.assert_invalid_data(serializer, self.INVALID_DATA_DICT)

    def test_validate_success(self):
        serializer = TempSerializer()
        self.assert_valid_data(serializer, self.VALID_DATA_DICT)


