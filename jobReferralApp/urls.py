from django.contrib import admin
from django.urls import path, re_path, include
from . import views
from .admin import admin_site
from rest_framework.routers import DefaultRouter


router = DefaultRouter()
router.register('post', views.PostViewSet)
router.register('user', views.UserViewSet)
router.register('employer', views.EmployerViewSet)
router.register('tag', views.TagViewSet)
router.register('category', views.CategoryViewSet)
router.register('location', views.LocationViewSet)
router.register('job-appliant', views.JobApplycantViewSet)
router.register('apply', views.ApplyViewSet)
#/post/ GET
#/post/ POST
#/post/{post_id} GET
#/post/{post_id} PUT
#/post/{post_id} DELETE
urlpatterns = [
    path('', include(router.urls)),
    path('api-auth/', include('rest_framework.urls'))
]
