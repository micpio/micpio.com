
from __future__ import unicode_literals
from django.db import models

class Quotes(models.Model):
    quote = models.TextField()
    class Meta:
        db_table="quotes"




