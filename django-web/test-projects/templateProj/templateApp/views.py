from django.shortcuts import render
from django.http import HttpResponse


# Create your views here.
def index(request):
    my_dict = {
        'home_injection': "Hello I am from view.py!"
    }
    return render(request, 'index.html', context=my_dict)


def index_func(request):
    my_dict = {
            'test_injection': "Hello I am from view.py!"
    }
    return render(request, 'templateApp/index.html', context=my_dict)


def help_func(request):
    my_dict = {
            'help_injection': "This is help injection!"
    }
    return render(request, 'templateApp/help.html', context=my_dict)
