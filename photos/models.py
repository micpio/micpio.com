
from __future__ import unicode_literals
from django.db import models

class Photos(models.Model):
    description = models.CharField(max_length=(40),null=True)
    image = models.ImageField(null=True, upload_to='media/photos')
    def __str__(self):
        return(self.description)
    class Meta: db_table="photos"
