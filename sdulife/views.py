from django.shortcuts import render
from django.http import HttpResponse
from django.contrib.auth import get_user_model
from sdulife.forms import SDUdentForm

User = get_user_model()

def reg(request):
	if (request.method == 'POST'):
		form = SDUdentForm(request.POST)
		if form.is_valid():
			return HttpResponse('thanks')

	else:
		form = SDUdentForm()
		
	return render(request, 'registration.html', {'form':form})

def register(request):
	return HttpResponse(request.POST['email'])