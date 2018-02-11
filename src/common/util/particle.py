import requests, json
from django.conf import settings
from rest_framework.response import Response


"""
    This is a wrapper class around the particle API
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



