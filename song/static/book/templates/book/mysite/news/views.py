from news.models import News 
from django.shortcuts import render
from .forms import NewsForm 
from django.utils import timezone 
from django.shortcuts import redirect
from django.shortcuts import render, get_object_or_404
from django.contrib.auth.models import User
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

#newsinsert data page
def news_new(request):
    if request.method == "POST":
        form = NewsForm(request.POST)
        if form.is_valid():
            post = form.save(commit=False)
            post.journalist = request.user
            post.published_date = timezone.now()
            post.save()
            return redirect('news_detail', pk=post.pk)
    else:
        form = NewsForm()
    return render(request, 'news/newsedit.html', {'form': form})

def news_detail(request, pk):
    post = get_object_or_404(News, pk=pk)
    return render(request, 'news/newsdetail.html', {'post': post})



def news_edit(request, pk):
    post = get_object_or_404(News, pk=pk)
    if request.method == "POST":
        form = PostForm(request.POST, instance=post)
        if form.is_valid():
            post = form.save(commit=False)
            post.journalist = request.user
            post.published_date = timezone.now()
            post.save()
            return redirect('news_detail', pk=post.pk)
    else:
        form = PostForm(instance=post)
    return render(request, 'news/newsedit.html', {'form': form})


#paginator
def news_index(request):
    user_list = News.objects.all()
    page = request.GET.get('page', 1)

    paginator = Paginator(user_list, 5)
    try:
        users = paginator.page(page)
    except PageNotAnInteger:
        users = paginator.page(1)
    except EmptyPage:
        users = paginator.page(paginator.num_pages)

    return render(request, 'news/newslist.html', { 'users': users })
