from django.shortcuts import render
from photos.models import Photos
from django.core.files import File
from displays.models import Displays

from django.contrib.auth.models import User
from django.conf import settings
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
import random



#paginator
def photos(request):
    users = Photos.objects.all()
    page = request.GET.get('page', 1 )
    count= Photos.objects.all().count()
    paginator = Paginator(users,10)
    try:
        users = paginator.page(page)
    except PageNotAnInteger:
        users = paginator.page(1)
    except EmptyPage:

        users = paginator.page(paginator.num_pages)
    return render(request, 'photography.html', { 'users': users ,'count':count ,})
