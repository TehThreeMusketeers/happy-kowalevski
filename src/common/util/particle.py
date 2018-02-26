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
    print("Getting access token: ")
    print(vars(response))
    json_data = json.loads(str(response.content.decode()))

    if 'access_token' in json_data:
        return json_data['access_token']

    return "" #Lazy, sorry, no time

def setDeviceFirmware(deviceId, firmwareVersion):

    token = getExpiringAccessToken()

    response = requests.put(API_PREFIX + API_VERSION + "products/" +
                    str(settings.PARTICLE_PRODUCT_ID) + "/devices/" + 
                    deviceId,
                    data={
                            'access_token' : getExpiringAccessToken(),
                            'desired_firmware_version' : firmwareVersion,
                            'flash' : 'true'
                })
    print("Setting device firmware: ")
    return response

def callDeviceFunction(deviceId, funcName):

    token = getExpiringAccessToken()

    return requests.post(API_PREFIX + API_VERSION + "products/" +
                             str(settings.PARTICLE_PRODUCT_ID) + "/devices" +
                             "/" + deviceId + "/" + funcName,
                              data={"access_token":token})


def getDeviceVariable(deviceId, varName):

    token = getExpiringAccessToken()

    return requests.get(API_PREFIX + API_VERSION + "products/" +
                             str(settings.PARTICLE_PRODUCT_ID) + "/devices" +
                             "/" + deviceId + "/" + varName,
                              params={"access_token":token})


def getDeviceInfo(deviceId):

    token = getExpiringAccessToken()

    return requests.get(API_PREFIX + API_VERSION + "products/" +
                             str(settings.PARTICLE_PRODUCT_ID) + "/devices" +
                             "/" + deviceId,
                              params={"access_token":token})

def pingDevice(deviceId):

    token = getExpiringAccessToken()

    return requests.put(API_PREFIX + API_VERSION + "products/" +
                             str(settings.PARTICLE_PRODUCT_ID) + "/devices" +
                             "/" + deviceId + "/ping",
                              data={"access_token":token})
