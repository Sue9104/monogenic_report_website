from django.urls import path
from . import views

app_name = 'report'
urlpatterns = [
    path('', views.IndexView.as_view(), name='index'),
    path('upload', views.model_form_upload, name='upload'),
    path('create', views.ReportCreate.as_view(), name='create'),
    path('statistics', views.Statistics.as_view(), name='statistics'),
    path('api/echarts/', views.echarts_data, name='api-echarts')
]
