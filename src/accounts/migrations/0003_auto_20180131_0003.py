# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2018-01-31 00:03
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0002_clean_user_model'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='access_token',
            field=models.CharField(default='blah', max_length=50, verbose_name='Access Token'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='user',
            name='refresh_token',
            field=models.CharField(default='bah', max_length=50, verbose_name='Refresh Token'),
            preserve_default=False,
        ),
    ]
