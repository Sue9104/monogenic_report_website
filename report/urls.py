from django.urls import path
from . import views

app_name = 'report'
urlpatterns = [
    path('', views.index, name='index'),
    path('upload', views.model_form_upload, name='upload'),
]
