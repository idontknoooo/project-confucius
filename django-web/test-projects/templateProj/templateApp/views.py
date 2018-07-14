from django.shortcuts import render
from django.http import HttpResponse


# Create your views here.
def index(request):
    my_dict = {'test_injection': "Hello I am from view.py!"}
    return render(request, 'templateApp/index.html', context=my_dict)
