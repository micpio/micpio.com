
from __future__ import unicode_literals
from django.db import models

class Home(models.Model):
    image = models.ImageField()

    class Meta:
        db_table="home"



