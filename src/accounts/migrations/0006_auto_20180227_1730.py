# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2018-02-27 17:30
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0005_auto_20180222_1558'),
    ]

    operations = [
        migrations.AlterField(
            model_name='notificationtoken',
            name='token',
            field=models.CharField(max_length=220),
        ),
    ]
