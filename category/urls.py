from django.urls import path, re_path
from category import views 

app_name = 'category'

urlpatterns = [
    path('', views.start, name='start')
]