# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2018-02-14 22:16
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('devices', '0012_auto_20180214_2122'),
    ]

    operations = [
        migrations.AlterField(
            model_name='devicegrouptriggerlocalaction',
            name='function',
            field=models.CharField(max_length=50),
        ),
    ]
