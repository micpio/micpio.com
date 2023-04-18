from django.shortcuts import render
from stories.models import Stories
from django.core.files import File
from displays.models import Displays

from django.contrib.auth.models import User
from django.conf import settings
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
import random



#paginator
def stories(request):
    display = Displays.objects.all()
    users = Stories.objects.all()
    page = request.GET.get('page', 1 )
    count= Stories.objects.all().count()
    context= {'count': count}
    paginator = Paginator(users,5)
    phr=str((random.randint(0, 8)))
    items =  open("phrases/"+phr, "r")
    try:
        users = paginator.page(page)
    except PageNotAnInteger:
        users = paginator.page(1)
    except EmptyPage:

        users = paginator.page(paginator.num_pages)
    return render(request, 'stories/storypage.html', { 'users': users ,'count':count , 'display' : display,})
