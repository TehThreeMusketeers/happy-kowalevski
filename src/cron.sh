#!/bin/bash

source /django/.env
/usr/local/bin/python /django/src/manage.py getSensorData --settings=djangoreactredux.settings.dev_docker
