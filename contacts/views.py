from django.shortcuts import render
from rest_framework.generics import ListAPIView, CreateAPIView,RetrieveUpdateDestroyAPIView
from rest_framework.permissions import IsAuthenticated,IsAdminUser
from contacts.serializer import GetContactsSerializer,GetUserInfoSerializer,UserInfoCRUDSerializer
from contacts.models import Contacts,UserInfo



def index(request):    
    content = Contacts.objects.raw("SELECT * FROM public.contacts_contacts c , public.contacts_userinfo i WHERE c.id = i.contact_id ORDER BY c.username")
    return render(request,'contacts/index.html', {'contacts' : content})



class ContactInfoView(ListAPIView):

    queryset = Contacts.objects.all()
    serializer_class = GetContactsSerializer



class ContactDetailView(CreateAPIView):

    queryset = Contacts.objects.all()
    serializer_class = GetContactsSerializer


class ContactPutView(RetrieveUpdateDestroyAPIView):

    queryset = Contacts.objects.all()
    serializer_class = UserInfoCRUDSerializer


class UserInfoPostView(CreateAPIView):

    queryset = UserInfo.objects.all()
    serializer_class = UserInfoCRUDSerializer    


class UserInfoCRUDView(RetrieveUpdateDestroyAPIView):

    queryset = UserInfo.objects.all()
    serializer_class = UserInfoCRUDSerializer   