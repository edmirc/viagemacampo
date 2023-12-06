from django.shortcuts import render
from django.contrib import messages
from .banco.mybanco import CidadeBanco, TiposBanco, CarroBanco
from .models import Cidades, Carros, Tipos, Pagamentos, NomeVaigem, Dados
from django.contrib import messages

# Create your views here.


def index(request):
    return render(request, 'index.html')


def cidade(request):
    if str(request.method) == 'POST':
        id = request.POST.get('id')  
        nome: str = request.POST.get('nome')
        estado: str = request.POST.get('estado')
        if id is None or id == "":
            cid = Cidades()
        else:
            cid = Cidades.objects.get(id=id)
        cid.nome = nome.strip().title()
        cid.estado = estado.strip().upper()
        cid.save()
    context = {
        'cidade': Cidades.objects.all()
    }
    return render(request, 'cidade.html', context)


def dados(request):
    if request.method == 'POST':
        res: bool = Dados().salvaDados(request)
        if res:
            messages.success(request, 'Dados Salvos com sucesso!!')
        else:
            messages.error(request, 'Dados não salvos!!')
    context = {
        'nomev': NomeVaigem.objects.all(),
        'tipos': Tipos.objects.all(),
        'carro': Carros.objects.all(),
        'cidade': Cidades.objects.all(),
        'pagamento': Pagamentos.objects.all(),
        'despesas': Dados.objects.prefetch_related().all().order_by('data', 'idTipo'),
    }
    return render(request, 'dados.html', context)

def nomeViagem(request):
    if request.method == "POST":
        id = request.POST.get('id')
        nome = request.POST.get('nome')
        datai = request.POST.get('datai')
        dataf = request.POST.get('dataf')
        ati = request.POST.get('atividade')
        if id is None or id == "":
            nomev = NomeVaigem()
            print(request.POST)
        else:
            nomev = NomeVaigem.objects.get(id=id)
            print(request.POST, 'alter')
        nomev.nome = nome.title().strip()
        nomev.dataInicial = datai
        nomev.DataFinal = dataf
        if ati is None or ati == "":
            ati = '0'
        nomev.atividade = ati
        nomev.save()
    context = {
        'nomeviagem': NomeVaigem.objects.all()
    }
    return render(request, 'nome-viagem.html', context)

def carros(request):
    if request.method == 'POST':
        id = request.POST.get('id')
        placa: str = request.POST.get('placa')
        modelo: str = request.POST.get('modelo')
        if id is None or id == '':
            car = Carros()
        else:
            car = Carros.objects.get(id=id)
        car.placa = placa.upper().strip()
        car.modelo = modelo.title().strip()
        car.save()
    context = {
      'carro': Carros.objects.all()
    }
    return render(request, 'carro.html', context)

def tipos(request):
    if request.method == 'POST':
        id = request.POST.get('id')
        tp: str = request.POST.get('tipo')
        if id is None or id == "":
            tipo = Tipos()
        else:
            tipo = Tipos.objects.get(id=id)
        tipo.tipo = tp.strip().title()
        tipo.save()
    context = {
        'tipo': Tipos.objects.all().order_by('id')
    }
    return render(request, 'tipo.html', context)

def pagamentos(request):
    if request.method == 'POST':
        id = request.POST.get('id')
        forma: str = request.POST.get('tipo')
        if id is None or id == "":
            pg = Pagamentos()
        else:
            pg = Pagamentos.objects.get(id=id)
        pg.forma_pagamento = forma.strip().title()
        pg.save()
        
    context = {
        'pagamento': Pagamentos.objects.all().order_by('id')
    }
    return render(request, 'pagamento.html', context)