

from django.shortcuts import render
from art.models import Art
import random
def art(request):
    phr = str((random.randint(0, 8)))
    items = open("phrases/" + phr, "r")
    count = Art.objects.all().count()
    pieces = Art.objects.all()[:5]
    more = Art.objects.all()[5:10]
    return render(request, 'art.html',{'pieces':pieces,'count':count,'more':more, 'items':items})
