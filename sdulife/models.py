from django.conf import settings
from django.db import models
from django.contrib.auth.models import BaseUserManager, AbstractBaseUser

class SDUdentManager(BaseUserManager):
	def create_user(self, email, first_name, last_name, phone_number, password):
		if not email:
			raise ValueError('Please, check your email')

		user = self.model(
			email=SDUdentManager.normalize_email(email),
			first_name=first_name,
			last_name=last_name,
			phone_number=phone_number,
		)
		user.set_password(password)
		user.save(using=self._db)

		return user

class SDUdent(AbstractBaseUser):
	first_name = models.CharField(max_length=50)
	last_name = models.CharField(max_length=50)
	phone_number = models.CharField(max_length=10)
	email = models.EmailField(unique=True)
	
	objects = SDUdentManager()

	USERNAME_FIELD = 'email'
	REQUIRED_FIELDS = ['first_name', 'last_name',  'phone_number', 'password']