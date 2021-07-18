from django.db import models
from django.db.models.base import Model
from rest_framework import serializers
from contacts.models import Contacts,UserInfo




class GetUserInfoSerializer(serializers.ModelSerializer):

    class Meta:
        model  = UserInfo
        fields = ['mnumber', 'email']


class UserInfoCRUDSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = UserInfo
        fields = '__all__'

class GetContactsSerializer(serializers.ModelSerializer):

    contact = GetUserInfoSerializer(many=True)

    class Meta:
        model  = Contacts
        fields = '__all__'
