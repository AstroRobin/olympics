# Generated by Django 5.1.1 on 2024-10-11 02:44

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('tally_app', '0001_initial'),
    ]

    operations = [
        migrations.AlterUniqueTogether(
            name='event',
            unique_together={('discipline', 'name', 'gender', 'host')},
        ),
    ]