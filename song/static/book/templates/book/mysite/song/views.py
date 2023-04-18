# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.views.generic import TemplateView
from song.models import Bandsongs
from django.shortcuts import redirect
from django.shortcuts import render, get_object_or_404
from django.contrib.auth.models import User
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger




# Create your views here.

def song_list(request,):
    users = Bandsongs.objects.all()
    context ={'users':users}
    return render(request,'song/bandlist.html',context)




#paginator
def song(request):
    user_list = Bandsongs.objects.all()
    page = request.GET.get('page', 1)

    paginator = Paginator(user_list, 10)
    try:
        users = paginator.page(page)
    except PageNotAnInteger:
        users = paginator.page(1)
    except EmptyPage:
        users = paginator.page(paginator.num_pages)

    return render(request, 'song/bandlist.html', { 'users': users })


