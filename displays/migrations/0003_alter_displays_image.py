# Generated by Django 4.1.7 on 2023-05-29 22:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('displays', '0002_alter_displays_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='displays',
            name='image',
            field=models.ImageField(upload_to='media/displays/'),
        ),
    ]
