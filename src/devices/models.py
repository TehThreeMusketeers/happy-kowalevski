from datetime import timedelta
import datetime
from django.conf import settings
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager
from django.db import models
from django.utils import timezone
from accounts.models import User


class PhotonDevice(models.Model):
    dOwner = models.ForeignKey(User, on_delete=models.CASCADE)
    dId = models.CharField(max_length=50)
    dType = models.CharField(max_length=50)
    registrationDate = models.DateTimeField('registration date')
    
class TempReading(models.Model):
    dId = models.ForeignKey(PhotonDevice)
    tempReading = models.FloatField()
    readingDate = models.DateTimeField('reading date')

class HumReading(models.Model):
    dId = models.ForeignKey(PhotonDevice)
    humidityReading = models.FloatField()
    readingDate = models.DateTimeField('reading date')

class AmbLightReading(models.Model):
    dId = models.ForeignKey(PhotonDevice)
    ambientLightReading = models.FloatField()
    readingDate = models.DateTimeField('reading date')

class MovementReading(models.Model):
    dId = models.ForeignKey(PhotonDevice)
    readingDate = models.DateTimeField('reading date')

