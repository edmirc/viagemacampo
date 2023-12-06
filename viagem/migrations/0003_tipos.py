from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('viagem', '0002_carros'),
    ]

    operations = [
        migrations.CreateModel(
            name='Tipos',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipo', models.CharField(max_length=50, unique=True)),
            ],
        ),
    ]