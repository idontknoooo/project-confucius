# 1. "urls.py": Map url to functions in view*.py. So that when ever url get called, that function linked to it will get called as well

# 2. Start a new project
''' django-admin startproject projectName 
'''

# 3. Start a new app
''' python manage.py projectName appName
'''

# 4. Start server
''' python manage.py runserver 0.0.0.0:8080
'''

# 5. 'include': include multiple urls for application by using 'include'. A nice way to organize urls
# In project urls.py
from django.conf.urls import include 
urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^first_app/', include('first_app.urls')),
    url(r'^admin/', admin.site.urls),
]
# In first_app folder, have a urls.py
from django.conf.urls import url
from first_app import views 

urlpatterns = [
    url(r'^$', views.index, name='index'),
]
