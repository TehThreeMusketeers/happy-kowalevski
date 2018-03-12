from django.db import models
from accounts.models import User

'''
    A zone. This both users and devices can have a zone
'''
class Zone(models.Model):
    name = models.CharField(max_length=50, unique=True)
    lightCmd = models.CharField(max_length=50) #Cmd to control light in this zone
    user = models.ForeignKey(User, on_delete=models.CASCADE)

