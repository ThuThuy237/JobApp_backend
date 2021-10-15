from django.contrib.auth.models import AbstractUser
from django.db import models
from ckeditor.fields import RichTextField
from phonenumber_field.modelfields import PhoneNumberField

# Create your models here.


class User(AbstractUser):
    avatar = models.ImageField(upload_to='uploads/avatar/%Y/%m')

    def __str__(self):
        return self.username


class Category(models.Model):
    name = models.CharField(null=False, unique=True, max_length=255)
    description = models.CharField(max_length=255, null=True, blank=True)

    def __str__(self):
        return self.name


class Post(models.Model):
    title = models.CharField(null=False, max_length=255)
    description = RichTextField()
    image = models.ImageField(upload_to='uploads/images/%Y/%m')
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)
    category = models.ForeignKey(Category, related_name="post", on_delete=models.SET_NULL, null=True)
    employer = models.ForeignKey('Employer', related_name="post", on_delete=models.CASCADE)
    tags = models.ManyToManyField('Tag', blank=True)
    jobApplicant = models.ManyToManyField('JobApplicant', related_name='post',through="Apply" )

    def __str__(self):
        return self.title


class Employer(models.Model):
    company_name = models.CharField(max_length=255, null= False)
    address = models.CharField(max_length=255, null= False)
    contact_email = models.EmailField(null = False)
    contact_phone = PhoneNumberField(unique = True, null = False, blank = False)
    is_accepted = models.BooleanField(default=False)
    user = models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True)

    def __str__(self):
        return self.company_name


class JobApplicant(models.Model):
    cv = models.FileField(upload_to='uploads/cv/%Y/%m', null=True)
    cover_letter = models.FileField(upload_to='uploads/coverLetter/%Y/%m', null=True)
    phone = PhoneNumberField(unique = True, null = False, blank = False)
    user = models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True)


class Apply(models.Model):
    post = models.ForeignKey(Post, on_delete=models.CASCADE)
    applicant = models.ForeignKey(JobApplicant, on_delete=models.CASCADE)
    date_apply = models.DateTimeField(auto_now_add=True)
    status = models.BooleanField(default=False) #is complete
    stars = models.IntegerField(null=True)


class Tag(models.Model):
    name = models.CharField(null=False, unique=True, max_length=255)

    def __str__(self):
        return self.name
