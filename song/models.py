# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# Create your models here.
CATEGORIES = (
    ('Pentagons', 'Pentagons'),
    ('Kordz', 'Kordz'),
    ('Cykics', 'Cykics'),


        )



class Bandsongs(models.Model):
    title = models.CharField(max_length=(50))
    artist = models.CharField(max_length=(50))
    group = models.CharField(max_length=15,choices=CATEGORIES,default='Pentagons')
    def __str__(self):
       return u"%s %s  %s"%( self.title,self.artist,self.group)



    class Meta:
        ordering = ['-artist',]
        db_table= "bandsongs"
