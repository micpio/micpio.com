from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static
from django.urls import path, include                 # add this






app_name = 'todo'
urlpatterns = [
    path('todos/',views.todos,name='todos'),
    path('todo/new/', views.todo_new, name='todo_new'),
    path('todo/<int:pk>/', views.todo_detail , name='todo_detail'),
    path('todo/<int:pk>/todo_edit/', views.todo_edit, name='todo_edit'),


    ]+ static(settings.STATIC_URL, document_root=settings.STATIC_ROOT           )