# 1. "urls.py": Map url to functions in view*.py. So that when ever url get called, that function linked to it will get called as well

# 2. Start a new project
''' django-admin startproject projectName 
'''

# 3. Start a new app
''' python manage.py startapp appName
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

# 6. Template: allows you to inject dynamic content that your Django App's views will produce, effecting the final HTML
#   a. setup: project/templates/first_app
#   b. Let Django know of the templates by editing the DIR key inside of the TEMPLATES dictionary in the settings.py file. Use python OS module to generate file path
#   c. Use 'render()' function inside of our views.py file


# 7. How to use template?
#   Make sub-directory under 'templates' for each application. Then use 'os' to let Django know the location of templates. Then in application 'views.py' use 'render' to inject the object to template where you have the 'injection tag {{}}' in 'templates/app' directory.

# 8. Create SQL Objects
#   python manage.py migrate

# 9. Register the changes to your application
#   python manage.py makemigrations app_name

# 10. Check model using admin
#   python manage.py createsuperuser

# 11. MTV procudures
#   a. In the views.py file, import any models that we will need to use
#   b. Use the view to query the model for data that we will need
#   c. Pass results from the model to the template
#   d. Edit the template so that it is ready to accept and display the data from the model
#   e. Map a URL to the view
