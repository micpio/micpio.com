


from django.shortcuts import render
from cartoons.models import Cartoons

def cartoons(request):
    count = Cartoons.objects.all().count()
    cartoons = Cartoons.objects.all()[:4]                   
    more = Cartoons.objects.all() [4:8]
    return render(request, 'cartoons.html',{'cartoons':cartoons,'count':count,'more':more })


