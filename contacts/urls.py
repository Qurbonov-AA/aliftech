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

urlpatterns = [
    path('', index, name='home-page'),
    path('list/', ContactInfoView.as_view(), name='list-contacts'),
    path('post/', ContactDetailView.as_view(), name='post-contacts'),
    path('put/<int:pk>', ContactPutView.as_view(), name='put-contacts'),
    path('userinfo/post/', UserInfoPostView.as_view(), name='post-userinfo'),
    path('userinfo/put/<int:pk>', UserInfoCRUDView.as_view(), name='put-userinfo'),
    path('search/<str:search>', ContactSearchView.as_view(), name='search-api' ),
]

