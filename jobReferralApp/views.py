from django.http import HttpResponse
from django.shortcuts import render
from django.views import View
from django.db.models import Q

from rest_framework.pagination import PageNumberPagination
from rest_framework import viewsets, permissions, generics, status
from rest_framework.decorators import action
from rest_framework.response import Response

from .serializers import *
from rest_framework.parsers import MultiPartParser, JSONParser

class StandardResultsSetPagination(PageNumberPagination):
    page_size = 10
    page_size_query_param = 'page_size'
    max_page_size = 20

class UserViewSet(viewsets.ViewSet, generics.ListAPIView, generics.CreateAPIView, generics.RetrieveAPIView):
     queryset = User.objects.filter(is_active=True)
     serializer_class = UserSerializer
     parser_classes = [MultiPartParser, JSONParser]
     permission_classes = [permissions.IsAuthenticated]

     @action(methods=['get'], detail=False, url_path="current-user", url_name='get-current-user')
     def get_current_user(self, request):
          return Response(self.serializer_class(request.user, context={"request": request}).data,
                          status=status.HTTP_200_OK)



class PostViewSet(viewsets.ViewSet, generics.ListAPIView, generics.RetrieveAPIView):
     queryset = Post.objects.filter(active=True)
     serializer_class = PostSerializers
     pagination_class = StandardResultsSetPagination
     # permission_classes = [permissions.IsAuthenticated]


     def list(self, request, *args, **kwargs):
          queryset = self.queryset
          kw = self.request.query_params.get('kw', None)
          category = self.request.query_params.get('category', None)
          location = self.request.query_params.get('location', None)
          salary = self.request.query_params.get('salary', None)

          if kw:
               queryset = queryset.filter(title__icontains=kw)
          if category !='':
               queryset = queryset.filter(category_id=category)
          if location !='':
               queryset = queryset.filter(location_id=location)
          if salary:
               queryset = queryset.filter(Q(salary__gte=salary) | Q(salary__gte=0))
          page = self.paginate_queryset(queryset)
          if page is not None:
               serializer = self.get_serializer(page, many=True)
               return self.get_paginated_response(serializer.data)

          serializer = self.get_serializer(queryset, many=True)
          return Response(serializer.data)

     def retrieve(self, request, *args, **kwargs):
          instance = self.get_object()
          serializer = PostItemSerializers(instance, context={"request": request})
          return Response(serializer.data)


     @action(methods=['get'], detail=False, url_path='get-top5-lastest')
     def gettop5(self, request):
          queryset = self.queryset
          category = self.request.query_params.get('category', None)
          if category:
               queryset = queryset.filter(category_id=category)
          queryset = queryset[:5]
          return Response(self.get_serializer(queryset, many=True).data)

class EmployerViewSet(viewsets.ViewSet, generics.CreateAPIView):
     queryset = Employer.objects.filter(is_accepted=True)
     serializer_class = EmployerSerializers

     def create(self, request, *args, **kwargs):
          e = Employer.objects.get_or_create(company_name = request.data['company_name'],
                                              user=User.objects.get(pk=request.data['user']),
                                              address = request.data['address'],
                                              contact_email = request.data['contact_email'],
                                              contact_phone = request.data['contact_phone'],
                                              )[0]
          return Response(EmployerSerializers(e).data, status=status.HTTP_201_CREATED)

class TagViewSet(viewsets.ViewSet):
     queryset = Tag.objects.all()
     serializer_class = TagSerializers

class CategoryViewSet(viewsets.ViewSet, generics.ListAPIView):
     queryset = Category.objects.all()
     serializer_class = CategorySerializers

class LocationViewSet(viewsets.ViewSet, generics.ListAPIView):
     queryset = Location.objects.all()
     serializer_class = LocationSelectSerializers






     # List (GET) --> Xem danh sach viec lam
     # ...(POST) --> them viec lam
     # detail --> xem chi tiet 1 viec lam
     # ...(PUT) --> cap nhat
     # ...(DELETE) --> xoa


