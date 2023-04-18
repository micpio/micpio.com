from django.contrib import admin
from django.urls import path,include
from django.views.generic.base import TemplateView
from django.conf import settings
from django.conf.urls.static import static




urlpatterns = [
    path('admin/', admin.site.urls),
    path('accounts/', include('django.contrib.auth.urls')),
    path('',include('blog.urls')),
    path('',include('more.urls')),
    path('',include('photos.urls')),
    path('book/', include('book.urls')),
    path('news/', include('news.urls')),
    path('song/', include('song.urls')),
    path('loghome/', TemplateView.as_view(template_name='loghome.html'), name='loghome'),

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


