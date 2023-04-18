from django.urls import path
from . import views

urlpatterns = [

    path('morephotos',views.morephotos,name='morephotos'),



    ]
