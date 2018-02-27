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
    name = models.CharField(max_length=50, unique=True)
    description = models.CharField(max_length=140,null=True, blank=True)
    firmwareVersion = models.IntegerField(default=2)

'''
  Represents list of functions available for a given 
  device type
  These will be created by admin
  TODO should be many-to-many
'''
class DeviceTypeFunc(models.Model):
    devicetype = models.ManyToManyField(DeviceType)
    funcName = models.CharField(max_length=50)

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
    state = models.CharField(max_length=50)

'''
  A variable in a group type
'''
class DeviceGroupTypeVariable(models.Model):
    devicegrouptype = models.ForeignKey(DeviceGroupType, related_name='variables', on_delete=models.CASCADE)
    variable = models.CharField(max_length=50)
    variableType = models.CharField(max_length=50)


'''
  A user will be able to create a group of their own devices
  They should select what type of group it is. 
  This sets the possible states the group can have.
'''
class DeviceGroup(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    state = models.ForeignKey(DeviceGroupTypeState) #Current state of group
    name = models.CharField(max_length=50)
    groupType = models.ForeignKey(DeviceGroupType) 
    description = models.CharField(max_length=140,null=True, blank=True)

'''
  Available comparison operators settable in a trigger,
  e.g. <, >, >=, =, !=, etc.
'''
class DeviceGroupTriggerOperator(models.Model):
    operator = models.CharField(max_length=2)

''' 
  A Trigger object belonging to a group
  valuetype contains the type of value, e.g. light, sound etc.
  valuetype also contains the data type of that value. E.g. light is an integer, moved is a boolean
  operator is the comparison operator
'''
class DeviceGroupTrigger(models.Model):
    valuetype = models.ForeignKey(DeviceGroupTypeVariable)
    operator = models.ForeignKey(DeviceGroupTriggerOperator)
    state = models.ForeignKey(DeviceGroupTypeState) #Required group
    value = models.CharField(max_length=50)
    group = models.ForeignKey(DeviceGroup)


''' 
  A LocalAction object, has a related trigger. 
  A LocalAction triggers a method on a photon in the group
'''
class DeviceGroupTriggerLocalAction(models.Model):
    trigger = models.ForeignKey(DeviceGroupTrigger, related_name='localActions')
    function = models.CharField(max_length=50)

''' 
  A representation of the device. Owned by a user.
'''
class Device(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    deviceType = models.ForeignKey(DeviceType)
    deviceId = models.CharField(max_length=50, unique=True)
    deviceName = models.CharField(max_length=50,null=True, blank=True)
    date = models.DateTimeField(auto_now_add=True, blank=True)
    group = models.ForeignKey(DeviceGroup, related_name='devices', null=True, blank=True)

'''
  An event happened!
  Contains the trigger
  and the the device the event happened on
'''
class DeviceEvent(models.Model):
    trigger = models.ForeignKey(DeviceGroupTrigger)
    device = models.ForeignKey(Device)
    date = models.DateTimeField(auto_now_add=True, blank=True)

class TempReading(models.Model):
    device = models.ForeignKey(Device)
    result = models.FloatField()
    date = models.DateTimeField(auto_now_add=True, blank=True)

class HumReading(models.Model):
    device = models.ForeignKey(Device)
    result = models.FloatField()
    date = models.DateTimeField(auto_now_add=True, blank=True)

class AmbLightReading(models.Model):
    device = models.ForeignKey(Device)
    result = models.FloatField()
    date = models.DateTimeField(auto_now_add=True, blank=True)

class SoundReading(models.Model):
    device = models.ForeignKey(Device)
    result = models.FloatField()
    date = models.DateTimeField(auto_now_add=True, blank=True)

class MovementReading(models.Model):
    device = models.ForeignKey(Device)
    date = models.DateTimeField(auto_now_add=True, blank=True)

