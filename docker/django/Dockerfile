FROM python:3.4.3
MAINTAINER Filipe Garcia <filipe.garcia@seedstarslabs.com>

ENV PYTHONUNBUFFERED 1

COPY ./docker/django/django-entrypoint.sh /
COPY ./py-requirements /django/py-requirements

WORKDIR /django

RUN pip install pip==9.0.1
RUN pip install -r py-requirements/dev.txt

RUN apt-get update && apt-get -y install cron

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

RUN export -p >env.vars

RUN (crontab -l ; echo "*/15 * * * * bash /django/src/cron.sh >> /var/log/cron.log") | crontab

