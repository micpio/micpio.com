
from __future__ import unicode_literals
from django.db import models

class Displays(models.Model):
    image = models.ImageField(upload_to = 'media/displays/')

    class Meta:
        db_table="displays"




