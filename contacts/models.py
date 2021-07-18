from django.db import models

class Contacts(models.Model):
    
    sex_choice = (
        ("M" , "Male"),
        ("F" , "Femali"),
        ("I" , "InterSex"),
    )
    username = models.CharField(max_length=255, unique=True)
    company  = models.CharField(max_length=255, verbose_name="Kompaniya")
    post     = models.CharField(max_length=100, verbose_name="Doljnost" )
    linkedin = models.CharField(max_length=255)
    sex      = models.CharField(max_length=20, choices=sex_choice)
    site     = models.CharField(max_length=255)

    
    def __str__(self):
        return str(self.username)


class UserInfo(models.Model):

    contact = models.ForeignKey(Contacts, on_delete=models.CASCADE, related_name='contact')
    mnumber = models.CharField(max_length=15, unique=True)
    email   = models.EmailField(max_length=255, unique=True)

    # def __str__(self):
    #     return f"number - {self.mnumber}  email - {self.email}" 
    

    

