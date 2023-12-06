# Generated by Django 4.2.7 on 2023-12-02 14:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('viagem', '0005_tipos'),
    ]

    operations = [
        migrations.CreateModel(
            name='NomeVaigem',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(blank=True, max_length=150, null=True, unique=True)),
                ('dataInicial', models.DateField(null=True)),
                ('DataFinal', models.DateField(null=True)),
                ('atividade', models.BooleanField()),
            ],
        ),
        migrations.CreateModel(
            name='Pagamentos',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('forma_pagamento', models.CharField(max_length=50, null=True)),
            ],
        ),
    ]
