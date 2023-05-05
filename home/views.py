from django.utils import timezone 
from django.shortcuts import render,get_object_or_404 
from home.models import Quotes
from displays.models import Displays
import random

def home(request):
    
     items = random.choice(Quotes.objects.all())

     disimage = Displays.objects.all()
     return render(request,'base.html',{'items': items ,'disimage':disimage} )
