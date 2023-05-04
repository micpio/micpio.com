from django.utils import timezone 
from django.shortcuts import render,get_object_or_404 
import random

def home(request):
     nums=[0,8]
#     phr=random.randint(0,8)
 #    items = open("phrases"/phr, "r")

     return render(request,'home.html', )
