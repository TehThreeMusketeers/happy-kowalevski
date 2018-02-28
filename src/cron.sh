#!/bin/bash

source /django/.env
export PARTICLE_API_KEY
export PARTICLE_PRODUCT_ID
export PARTICLE_API_CLIENT
export PARTICLE_API_USERNAME
export PARTICLE_API_PASSWORD
export FCM_API_KEY

/usr/local/bin/python /django/src/manage.py getSensorData --settings=djangoreactredux.settings.dev_docker
