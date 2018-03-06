from rest_framework import serializers

from accounts.models import User, NotificationToken
from push_notifications.models import GCMDevice
from lib.utils import validate_email as email_is_valid


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('email', 'first_name', 'last_name',)


class UserRegistrationSerializer(serializers.ModelSerializer):
    email = serializers.EmailField()

    class Meta:
        model = User
        fields = ('id', 'email', 'first_name', 'last_name', 'password', 'access_token', 'refresh_token')

    def create(self, validated_data):
        """
        Create the object.

        :param validated_data: string
        """
        user = User.objects.create(**validated_data)
        user.set_password(validated_data['password'])
        user.save()
        return user

    def validate_email(self, value):
        """
        Validate if email is valid or there is an user using the email.

        :param value: string
        :return: string
        """
        if not email_is_valid(value):
            raise serializers.ValidationError('Please use a different email address provider.')

        if User.objects.filter(email=value).exists():
            raise serializers.ValidationError('Email already in use, please use a different email address.')

        return value

class NotificationTokenSerializer(serializers.ModelSerializer):
    class Meta:
        model = NotificationToken
        fields = ('id','token')

    def create(self, validated_data):
        #Also create an associated gcm device
        token = validated_data.get('token')
        user = self.context['request'].user
        GCMDevice.objects.create(registration_id=token, cloud_message_type="FCM", user=user)
        return NotificationToken.objects.create(user=user,**validated_data)

    def update(self, instance, validated_data):
        user = self.context['request'].user
        instance.token = validated_data.get('token', instance.token)
        device = GCMDevice.objects.filter(user=user).first()
        if device is None:
            raise serializers.ValidationError('Could not find existing FCM device. Please create one first')
        device.registration_id = instance.token
        instance.save()
        device.save()
        return instance

