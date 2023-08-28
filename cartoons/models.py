
from __future__ import unicode_literals
from django.db import models

class Cartoons(models.Model):
    image = models.ImageField(upload_to ="uploads")

    class Meta:
        db_table="cartoons"


