from django.urls import path
from . import views

urlpatterns = [

    path('cartoons/',views.cartoons,name='cartoons'),



    ]

