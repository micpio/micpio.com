from django.contrib import admin
from django.views.generic.base import TemplateView
from django.conf import settings
from django.conf.urls.static import static

from django.urls import path, include                 # add this





urlpatterns = [
    path('admin/', admin.site.urls),
    path('accounts/', include('django.contrib.auth.urls')),
    path('',include('polls.urls')),
    path('',include('blog.urls')),
    path('',include('todo.urls')),
    path('',include('more.urls')),
    path('',include('photos.urls')),
    path('',include('stories.urls')),
    path('book/', include('book.urls')),
    path('news/', include('news.urls')),
    path('song/', include('song.urls')),
    path('loghome/', TemplateView.as_view(template_name='loghome.html'), name='loghome'),
]+static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
