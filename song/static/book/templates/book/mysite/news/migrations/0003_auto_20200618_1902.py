# Generated by Django 3.0.6 on 2020-06-18 19:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('news', '0002_auto_20190119_2145'),
    ]

    operations = [
        migrations.AlterField(
            model_name='news',
            name='story',
            field=models.FileField(upload_to='collections/'),
        ),
    ]
