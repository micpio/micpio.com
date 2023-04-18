

# Create your views here.
from django.shortcuts import render
import project.views





def home(request):
    return render(request, 'home.html')
