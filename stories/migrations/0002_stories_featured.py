# Generated by Django 4.1.7 on 2023-03-25 13:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('stories', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='stories',
            name='featured',
            field=models.ImageField(blank=True, null=True, upload_to='uploads'),
        ),
    ]
