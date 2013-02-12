from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save

# Create your models here.
class UserProfile(models.Model):
	"""
	docstring for UserProfile
	inheriting user from auth and
	add phone number column for user
	"""
	user = models.OneToOneField(User)
	phone = models.IntegerField(max_length=10);
	#other fields here

class Club(models.Model):
	"""
	docstring for Club
	
	"""
	logo = models.ImageField(upload_to="logo")

	#def __init__(self, arg):
	#	super(Club, self).__init__()
	#	self.arg = arg
	



		