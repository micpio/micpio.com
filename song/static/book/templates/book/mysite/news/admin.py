# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin

from .models import News


class PersonAdmin(admin.ModelAdmin):
    ordering = ('bi_line',)
    list_display = ('journalist', 'story', 'bi_line')


admin.site.register(News,PersonAdmin)
