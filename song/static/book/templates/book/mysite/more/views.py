from django.shortcuts import render
from more.models import More

def morephotos(request):
    photos = More.objects.all()
    return render(request, 'more/morepage.html',{'photos':photos})
