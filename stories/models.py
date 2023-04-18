
from __future__ import unicode_literals
from django.db import models

class Stories(models.Model):
    description = models.CharField(max_length=(40),null=True)
    image = models.FileField(null=True , blank=True, upload_to='collection/')
    def __str__(self):
        return(self.description)
    class Meta: db_table="stories"
