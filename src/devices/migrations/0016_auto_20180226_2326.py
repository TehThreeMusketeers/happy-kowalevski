# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2018-02-26 23:26
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('devices', '0015_devicegrouptrigger_state'),
    ]

    operations = [
        migrations.CreateModel(
            name='SoundReading',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('result', models.FloatField()),
                ('date', models.DateTimeField(auto_now_add=True)),
                ('device', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='devices.Device')),
            ],
        ),
        migrations.RenameField(
            model_name='amblightreading',
            old_name='value',
            new_name='result',
        ),
        migrations.RenameField(
            model_name='humreading',
            old_name='value',
            new_name='result',
        ),
        migrations.RenameField(
            model_name='tempreading',
            old_name='value',
            new_name='result',
        ),
    ]