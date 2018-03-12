from rest_framework import serializers
from zones.models import *

class ZoneSerializer(serializers.ModelSerializer):
    class Meta:
        model = Zone 
        fields = ('id','name','lightCmd',)

    def create(self, validated_data):
        return Zone.objects.create(user=self.context['request'].user,**validated_data)
