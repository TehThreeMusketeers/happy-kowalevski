#!/bin/bash

# */15 * * * * bash /django/src/cron.sh > /django/output.txt 2>&1
# export -p >env.vars

source /django/env.vars
/usr/local/bin/python /django/src/manage.py getSensorData --settings=djangoreactredux.settings.dev_docker
