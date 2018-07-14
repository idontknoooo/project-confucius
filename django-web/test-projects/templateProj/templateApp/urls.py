from django.conf.urls import url
from templateApp import views

urlpatterns = [
    url(r'^$', views.index_func, name='index-func'),
    url(r'help', views.help_func, name='help-func'),
]