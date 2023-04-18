from django.shortcuts import render
from photos.models import Photos

def pageonephotos(request):
    photos = Photos.objects.all()
    return render(request, 'photos/firstpage.html',{'photos':photos})
