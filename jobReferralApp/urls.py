from django.contrib import admin
from django.urls import path, re_path, include
from . import views
from .admin import admin_site
from rest_framework.routers import DefaultRouter


router = DefaultRouter()
router.register('post', views.PostViewSet)
router.register('user', views.UserViewSet)
router.register('Employer', views.EmployerViewSet)
router.register('Tag', views.TagViewSet)

#/post/ GET
#/post/ POST
#/post/{post_id} GET
#/post/{post_id} PUT
#/post/{post_id} DELETE
urlpatterns = [
    path('', include(router.urls)),
    path('api-auth/', include('rest_framework.urls'))
]
