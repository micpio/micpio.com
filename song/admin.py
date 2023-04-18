# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin

# Register your models here.
from .models import Bandsongs

class PersonAdmin(admin.ModelAdmin):
    ordering = ['-artist',]
    list_display = ('title', 'artist', 'group')


admin.site.register(Bandsongs,PersonAdmin)
