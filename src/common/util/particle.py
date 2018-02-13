import requests, json
from django.conf import settings
from rest_framework.response import Response


"""
    This (will be) a wrapper class around the particle API
    For the moment is just a list of functions that don't handle
    errors at all.
"""

API_PREFIX = 'https://api.particle.io'
API_VERSION = '/v1/'

def createShadowAccount(email):

    return requests.post(API_PREFIX + API_VERSION + "products/" +
                    str(settings.PARTICLE_PRODUCT_ID) + "/customers",
                    auth=(settings.PARTICLE_API_CLIENT,
                            settings.PARTICLE_API_KEY),
                    json={
                    "email": email,
                    "no_password": "true"
                })

def getExpiringAccessToken():

    response = requests.post(API_PREFIX + "/oauth/token",
                    auth=(settings.PARTICLE_API_CLIENT,
                            settings.PARTICLE_API_KEY),
                    data={
                    "grant_type": "password",
                    "username" : settings.PARTICLE_API_USERNAME,
                    "password" : settings.PARTICLE_API_PASSWORD,
                })
    json_data = json.loads(str(response.content.decode()))

    if 'access_token' in json_data:
        return json_data['access_token']

    return "" #Lazy, sorry, no time

def setDeviceFirmware(deviceId, firmwareVersion):

    token = getExpiringAccessToken()

    return requests.put(API_PREFIX + API_VERSION + "products/" +
                    str(settings.PARTICLE_PRODUCT_ID) + "/devices/" + 
                    deviceId,
                    data={
                            'access_token' : getExpiringAccessToken(),
                            'desired_firmware_version' : firmwareVersion,
                            'flash' : 'true'
                })

