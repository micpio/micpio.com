from django.contrib import admin
from .models import Todo

class TodoAdmin(admin.ModelAdmin):  
    list_display = ('title', 'description', 'completed') 


def __str__(self):
    return self.title    

admin.site.register(Todo) 
