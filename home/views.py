from django.utils import timezone 
from django.shortcuts import render,get_object_or_404 
from home.models import Quotes
from displays.models import Displays
import random

def home(request):
     displays = Displays.objects.all()
    
     items = random.choice(Quotes.objects.all())
     return render(request,'home.html', {'items': items,'displays':displays })


     
