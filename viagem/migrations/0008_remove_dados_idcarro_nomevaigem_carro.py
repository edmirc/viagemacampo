# Generated by Django 5.0 on 2023-12-12 01:25

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('viagem', '0007_dados'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='dados',
            name='idcarro',
        ),
        migrations.AddField(
            model_name='nomevaigem',
            name='carro',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='viagem.carros'),
        ),
    ]
