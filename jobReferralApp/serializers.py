from rest_framework import serializers
from rest_framework.serializers import ModelSerializer
from .models import *


class UserSerializer(ModelSerializer):
    class Meta:
        model = User
        fields = ["id", "first_name", "last_name", "email", "username", "password", "avatar"]
        extra_kwargs = {
            'password': {'write_only': 'true'}
        }

    def create(self, validated_data):
        user = User(**validated_data)
        user.set_password(validated_data['password'])
        user.save()

        return user

class LocationSerializers(serializers.RelatedField):
    def to_representation(self, value):
       return '%s, %s' % (value.city, value.country)

class PostSerializers(ModelSerializer):
    location = serializers.SerializerMethodField('loca')
    created_date = serializers.DateTimeField(format="%d-%m-%Y %H:%M:%S")

    def loca(self, post):
        return '%s, %s' %(post.location.city, post.location.country)

    class Meta:
        model = Post
        fields = ["id", "title", "image", "created_date", "category", "location", "description", "subtitle"]


class TagSerializers(ModelSerializer):
    class Meta:
        model = Tag
        fields = ["id", "name"]


class EmployerSerializers(ModelSerializer):
    user = UserSerializer()

    class Meta:
        model = Employer
        fields = ["user", "company_name", "address", "contact_email", "contact_phone", "is_accepted"]
