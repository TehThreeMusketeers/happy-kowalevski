from datetime import timedelta
import datetime
from django.conf import settings
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager
from django.db import models
from django.utils import timezone
from accounts.models import User

class DeviceType(models.Model):
    value = models.CharField(max_length=50, unique=True)

class Device(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    deviceType = models.ForeignKey(DeviceType)
    deviceId = models.CharField(max_length=50, unique=True)
    deviceName = models.CharField(max_length=50,null=True, blank=True)
    date = models.DateTimeField(auto_now_add=True, blank=True)

class TempReading(models.Model):
    device = models.ForeignKey(Device)
    value = models.FloatField()
    date = models.DateTimeField(auto_now_add=True, blank=True)

class HumReading(models.Model):
    device = models.ForeignKey(Device)
    value = models.FloatField()
    date = models.DateTimeField(auto_now_add=True, blank=True)

class AmbLightReading(models.Model):
    device = models.ForeignKey(Device)
    value = models.FloatField()
    date = models.DateTimeField(auto_now_add=True, blank=True)

class MovementReading(models.Model):
    device = models.ForeignKey(Device)
    date = models.DateTimeField(auto_now_add=True, blank=True)

