from django.conf import settings
from django.db import models
from django.contrib.auth.models import BaseUserManager, AbstractBaseUser

class SDUdentManager(BaseUserManager):
	def create_user(self, email, first_name, last_name, phone_number, organization_name, password):
		if not email:
			raise ValueError('Please, check your email')

		user = self.model(
			email=SDUdentManager.normalize_email(email),
			first_name=first_name,
			last_name=last_name,
			phone_number=phone_number,
			organization_name=organization_name,
		)
		user.set_password(password)
		user.save(using=self._db)

		return user

	def create_superuser(self, email, first_name, last_name, phone_number, organization_name, password):
		if not email:
			raise ValueError('Please, check your email')

		user = self.model(
			email=SDUdentManager.normalize_email(email),
			first_name=first_name,
			last_name=last_name,
			phone_number=phone_number,
			organization_name=organization_name,
		)

		user.is_admin=True
		user.set_password(password)
		user.save(using=self._db)

		return user

class SDUdent(AbstractBaseUser):
	first_name = models.CharField(max_length=50)
	last_name = models.CharField(max_length=50)
	phone_number = models.CharField(max_length=10)
	email = models.EmailField(unique=True)
	organization_name = models.CharField(max_length=20)

	objects = SDUdentManager()
	is_admin = models.BooleanField(default=False)

	USERNAME_FIELD = 'email'
	REQUIRED_FIELDS = ['first_name', 'last_name',  'phone_number', 'organization_name', 'password']

	@property
	def is_staff(self):
		return self.is_admin

	def get_full_name(self):
		return self.email

	def get_short_name(self):
 		return self.email
 
 	def __unicode__(self):
		return self.email
	
	def has_perm(self, perm, obj=None):
		return True
 	
 	def has_module_perms(self, app_label):
		return True    
