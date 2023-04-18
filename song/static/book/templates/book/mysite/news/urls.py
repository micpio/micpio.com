
from django.urls import path
from . import views

urlpatterns = [

    path('news/new/',views.news_new,name='news_new'),
    path('news/<int:pk>/', views.news_detail, name='news_detail'),
    path('news/<int:pk>/edit', views.news_edit, name='news_edit'),
    path('news_index/',views.news_index,name='news_index'),
    
    
]

















