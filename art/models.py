from __future__ import unicode_literals

from django.db import models

class Art(models.Model):
    image = models.ImageField()
    title = models.CharField(max_length=(30),null=True)
    class Meta:
        db_table="art"



