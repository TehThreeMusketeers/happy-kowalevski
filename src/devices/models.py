from datetime import timedelta
import datetime
from django.conf import settings
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager
from django.db import models
from django.utils import timezone
from accounts.models import User

'''
  A device has a devicetype
  These will be created by admin
'''
class DeviceType(models.Model):
    value = models.CharField(max_length=50, unique=True)

'''
  Represents list of functions available for a given 
  device type
  These will be created by admin
'''
class DeviceTypeFunc(models.Model):
    devicetype = models.ForeignKey(DeviceType, on_delete=models.CASCADE)
    funcName = models.CharField(max_length=50, unique=True)

'''
  A type of group. This will have the possible states a group can have
'''
class DeviceGroupType(models.Model):
    name = models.CharField(max_length=50,unique=True)

''' 
  A state in a group type.
'''
class DeviceGroupTypeState(models.Model):
    devicegrouptype = models.ForeignKey(DeviceGroupType, related_name='states', on_delete=models.CASCADE)
    state = models.CharField(max_length=50,unique=True)

'''
  A user will be able to create a group of their own devices
  They should select what type of group it is. 
  This sets the possible states the group can have.
'''
class DeviceGroup(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    name = models.CharField(max_length=50)
    groupType = models.ForeignKey(DeviceGroupType) 
    description = models.CharField(max_length=140,null=True, blank=True)

''' 
  A representation of the device. Owned by a user.
'''
class Device(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    deviceType = models.ForeignKey(DeviceType)
    deviceId = models.CharField(max_length=50, unique=True)
    deviceName = models.CharField(max_length=50,null=True, blank=True)
    date = models.DateTimeField(auto_now_add=True, blank=True)
    group = models.ForeignKey(DeviceGroup,null=True, blank=True)

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

