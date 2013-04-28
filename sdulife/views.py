from django.shortcuts import render_to_response
from django.http import HttpResponse

def reg(request):
	return render_to_response('registration.html')

def register(request):
	return HttpResponse(request.POST['name'])