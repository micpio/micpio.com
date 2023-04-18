from .forms import TodoForm 
from django.utils import timezone 
from django.shortcuts import redirect
from django.shortcuts import render, get_object_or_404
from django.contrib.auth.models import User
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger               
from .models import Todo 



def todos(request):
    todos=Todo.objects.all()
    return render(request,'todo/todo_list.html',{'todos':todos})




def todo_new(request):
    if request.method == "POST":
        form = TodoForm(request.POST)
        if form.is_valid():
            post = form.save(commit=False)
            post.author = request.user
            post.published_date = timezone.now()
            post.save()
            return redirect('todo/todo_detail', pk=post.pk)
    else:
        form = TodoForm()
    return render(request, 'todo/todo_edit.html', {'form': form})




    

def todo_detail(request, pk):
    post = get_object_or_404(Todo, pk=pk)
    return render(request, 'todo/todo_detail.html', {'post': post})

def todo_edit(request, pk):
    post = get_object_or_404(Todo, pk=pk)
    if request.method == "POST":
        form = TodoForm(request.POST, instance=post)
        if form.is_valid():
            post = form.save(commit=False)
            post.author = request.user          
            post.published_date = timezone.now()
            post.save()
            return redirect('todo:todo_detail', pk=post.pk)
    else:
        form = TodoForm(instance=post)
    return render(request, 'todo/todo_edit.html', {'form': form})


