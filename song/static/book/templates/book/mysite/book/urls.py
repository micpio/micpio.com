
from django.urls import path
from . import views
from .views import SearchResultsView

urlpatterns = [
    path('search/', SearchResultsView.as_view(), name='search_results'),
    path('book/new/',views.book_new,name='book_new'),
    path('book/<int:pk>/', views.book_detail, name='book_detail'),
    path('book/<int:pk>/edit', views.book_edit, name='book_edit'),
    path('book_index/',views.book_index,name='book_index'),
    
    
]

















