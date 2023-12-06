from django.db import models

# Create your models here.

class Cidades(models.Model):
    nome = models.CharField(name='nome', max_length=150)
    estado = models.CharField(name='estado', max_length=2)

class Carros(models.Model):
    placa = models.CharField(name='placa', max_length=7)
    modelo = models.CharField(name='modelo', max_length=100)


class Tipos(models.Model):
    tipo = models.CharField(name='tipo', blank=False, unique=True, max_length=50)

class NomeVaigem(models.Model):
    nome = models.CharField(max_length=150, blank=True, unique=True, null=True)
    dataI = models.DateField(name='dataInicial', null=True)
    dataF = models.DateField(name='DataFinal', null=True)
    atividade = models.BooleanField(name='atividade')

class Pagamentos(models.Model):
    forma = models.CharField(max_length=50, name='forma_pagamento', null=True)

class Dados(models.Model):
    data = models.DateField(name='data')
    despesa = models.ForeignKey(Tipos, name='idTipo', on_delete=models.CASCADE)
    qnt = models.DecimalField(name='qnt', max_digits=10, decimal_places=2)
    valor = models.DecimalField(name='valor', max_digits=10, decimal_places=2)
    kminicial = models.IntegerField(name='kminical')
    kmfinal = models.IntegerField(name='kmfinal')
    kmrodado = models.IntegerField(name='kmrodado')
    consumo = models.DecimalField(name='consumo', max_digits=10, decimal_places=2)
    cidade = models.ForeignKey(Cidades, name='idcidade', on_delete=models.CASCADE)
    viagem = models.ForeignKey(NomeVaigem, name='idviagem', on_delete=models.CASCADE)
    pagamento = models.ForeignKey(Pagamentos, name='idpagamento', on_delete=models.CASCADE)
    carro = models.ForeignKey(Carros, name='idcarro', on_delete=models.CASCADE)

    def salvaDados(self, request) -> bool:
        try:
            data = request.POST.get('data')
            tipo = request.POST.get('tipo')
            qnt = request.POST.get('qnt')
            valor = request.POST.get('valor')
            kmI = request.POST.get('kmi')
            kmf = request.POST.get('kmf')
            kmr = request.POST.get('kmr')
            consumo = request.POST.get('consumo')
            cidade = request.POST.get('cidade')
            pg = request.POST.get('pg')
            viagem = request.POST.get('nome-viagem')
            carro = request.POST.get('carro')
            self.idviagem = NomeVaigem.objects.get(id=viagem)
            self.data = data
            self.idTipo = Tipos.objects.get(id=tipo)
            self.qnt = qnt
            self.valor = valor
            self.kminical = kmI
            self.kmfinal = kmf
            self.kmrodado = kmr
            self.consumo = consumo
            self.idcidade = Cidades.objects.get(id=cidade)
            self.idcarro = Carros.objects.get(id=carro)
            self.idpagamento = Pagamentos.objects.get(id=pg)
            self.save()
            return True
        except:
            return False