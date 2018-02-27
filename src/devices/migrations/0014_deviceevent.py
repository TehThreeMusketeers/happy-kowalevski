# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2018-02-15 00:13
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('devices', '0013_auto_20180214_2216'),
    ]

    operations = [
        migrations.CreateModel(
            name='DeviceEvent',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateTimeField(auto_now_add=True)),
                ('device', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='devices.Device')),
                ('trigger', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='devices.DeviceGroupTrigger')),
            ],
        ),
    ]