# Generated by Django 5.0 on 2023-12-12 01:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('viagem', '0008_remove_dados_idcarro_nomevaigem_carro'),
    ]

    operations = [
        migrations.AlterField(
            model_name='pagamentos',
            name='forma_pagamento',
            field=models.CharField(max_length=50),
        ),
    ]
