from django.contrib import admin
from django.urls import path,include
from contacts.views import (
    index,
    ContactInfoView,
    ContactDetailView,
    ContactPutView,
    UserInfoPostView,
    UserInfoCRUDView,
    ContactSearchView,
    ContactSearchView )
from drf_yasg.views import get_schema_view
from drf_yasg import openapi
from rest_framework import permissions
from django.conf.urls import url

schema_view = get_schema_view(
   openapi.Info(
      title="invests API",
      default_version='v1',
      description="API for invest  applications",
      terms_of_service="https://www.google.com/policies/terms/",
      contact=openapi.Contact(email="contact@snippets.local"),
      license=openapi.License(name="BSD License"),
   ),
   public=True,
   permission_classes=(permissions.AllowAny,),
)


urlpatterns = [
    url(r'^swagger(?P<format>\.json|\.yaml)$', schema_view.without_ui(cache_timeout=0), name='schema-json'),
    url(r'^swagger/$', schema_view.with_ui('swagger', cache_timeout=0), name='schema-swagger-ui'),
    url(r'^redoc/$', schema_view.with_ui('redoc', cache_timeout=0), name='schema-redoc'),
    path('', index, name='home-page'),
    path('list/', ContactInfoView.as_view(), name='list-contacts'),
    path('post/', ContactDetailView.as_view(), name='post-contacts'),
    path('put/<int:pk>', ContactPutView.as_view(), name='put-contacts'),
    path('userinfo/post/', UserInfoPostView.as_view(), name='post-userinfo'),
    path('userinfo/put/<int:pk>', UserInfoCRUDView.as_view(), name='put-userinfo'),
    path('search/<str:search>', ContactSearchView.as_view(), name='search-api' ),

]

