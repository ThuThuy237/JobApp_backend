from django.http import HttpResponse
from django.shortcuts import render
from django.views import View
from rest_framework import viewsets, permissions, generics, status
from rest_framework.decorators import action
from rest_framework.response import Response

from .models import Post, Employer, User
from .serializers import *
from rest_framework.parsers import MultiPartParser


class UserViewSet(viewsets.ViewSet, generics.ListAPIView, generics.CreateAPIView, generics.RetrieveAPIView):
     queryset = User.objects.filter(is_active=True)
     serializer_class = UserSerializer
     parser_classes = [MultiPartParser, ]

     @action(methods=['get'], detail=False, url_path="current-user", url_name='get-current-user')
     def get_current_user(self, request):
          return Response(self.serializer_class(request.user, context={"request": request}).data,
                          status=status.HTTP_200_OK)

     def get_permissions(self):
          if self.action == 'list':
               return [permissions.AllowAny()]

          return [permissions.IsAuthenticated()]


class PostViewSet(viewsets.ModelViewSet):
     queryset = Post.objects.filter(active=True)
     serializer_class = PostSerializers
     # permission_classes = [permissions.IsAuthenticated]

     def get_permissions(self):
          if self.action == 'list':
               return [permissions.AllowAny()]

          return [permissions.IsAuthenticated()]


class EmployerViewSet(viewsets.ModelViewSet):
     queryset = Employer.objects.filter(is_accepted=True)
     serializer_class = EmployerSerializers

class TagViewSet(viewsets.ModelViewSet):
     queryset = Tag.objects.all()
     serializer_class = TagSerializers

     # List (GET) --> Xem danh sach viec lam
     # ...(POST) --> them viec lam
     # detail --> xem chi tiet 1 viec lam
     # ...(PUT) --> cap nhat
     # ...(DELETE) --> xoa


def index(request):
     return render(request, template_name='index.html', context={'name':'My App' })


def welcome(request, year):
     return HttpResponse("HELLO " + str(year))


def welcome2(request, year):
     return HttpResponse("WELCOME " + str(year))


class TestView(View):
     def get(self, request):
          return HttpResponse("TESTING")

     def post(self, request):
          pass



