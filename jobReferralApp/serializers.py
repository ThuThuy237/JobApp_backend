from rest_framework import serializers
from rest_framework.serializers import ModelSerializer
from .models import *


class UserSerializer(ModelSerializer):
    type = serializers.SerializerMethodField('typeUser')

    def typeUser(self, user):
        try:
            e = Employer.objects.get(user=user)
            return 'recruiter'
        except : return 'user'
    class Meta:
        model = User
        fields = ["id", "first_name", "last_name", "email", "username", "password", "avatar", "type"]
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

class LocationSelectSerializers(ModelSerializer):
    class Meta:
        model = Location
        fields = ["id", "country", "city"]


class PostSerializers(ModelSerializer):
    location = serializers.SerializerMethodField('loca')
    created_date = serializers.DateTimeField(format="%d-%m-%Y %H:%M:%S")

    def loca(self, post):
        return '%s, %s' %(post.location.city, post.location.country)

    class Meta:
        model = Post
        fields = ["id", "title", "image", "created_date", "category", "location", "description", "subtitle", "salary"]

class EmployerSerializers(ModelSerializer):
    user = UserSerializer()

    class Meta:
        model = Employer
        fields = ["user", "company_name", "address", "contact_email", "contact_phone", "is_accepted"]
        # fields = '__all__'

class TagSerializers(ModelSerializer):
    class Meta:
        model = Tag
        fields = ["id", "name"]
class CategorySerializers(ModelSerializer):
    class Meta:
        model = Category
        fields = ["id", "name"]


class PostItemSerializers(ModelSerializer):
    location = serializers.SerializerMethodField('loca')
    created_date = serializers.DateTimeField(format="%d-%m-%Y %H:%M:%S")
    updated_date = serializers.DateTimeField(format="%d-%m-%Y %H:%M:%S")
    category = serializers.SlugRelatedField(slug_field="name", read_only=True)
    jobApplicant = serializers.SerializerMethodField('apply_count')
    employer = EmployerSerializers()
    tags = serializers.SlugRelatedField(slug_field="name", many=True, read_only=True)

    def apply_count(self, post):
        count = post.jobApplicant.count()
        return '%d' %(count)

    def loca(self, post):
        return '%s, %s' %(post.location.city, post.location.country)

    class Meta:
        model = Post
        fields = ["id", 'title', "subtitle", "salary", "description", "image", "created_date", "updated_date", "active", "category", "location", "address", "employer", "tags", 'jobApplicant']

