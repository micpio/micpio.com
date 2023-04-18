# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

class News(models.Model):
    journalist = models.CharField(max_length=(40))
    story = models.FileField(upload_to='collection/')
    bi_line = models.CharField(max_length=(40))
    def __str__(self):
        return(self.bi_line)
    class Meta:
        db_table="news"
