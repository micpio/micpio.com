from django.urls import path
from . import views

urlpatterns = [

    path('stories/',views.stories,name='stories'),



    ]
