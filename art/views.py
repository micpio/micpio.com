

from django.shortcuts import render
from art.models import Art
import random
def art(request):
    
    count = Art.objects.all().count()
    pieces = Art.objects.all()
    more = Art.objects.all()
    return render(request, 'art.html',{'pieces':pieces,'count':count,'more':more, })
