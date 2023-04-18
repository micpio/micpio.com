from django.urls import path
from . import views

urlpatterns = [

    path('song',views.song,name='song'),
    path('song_list',views.song_list,name='song_list'),



    ]
