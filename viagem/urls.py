from django.urls import path
from .views import index, cidade, dados, nomeViagem, carros, tipos, pagamentos

urlpatterns = [
    path('', index, name='index'),
    path('carros/', carros, name='carro'),
    path('cidade/', cidade, name='cidade'),
    path('dados/', dados, name='dados'),
    path('nome-viagem/', nomeViagem, name='nome-viagem'),
    path('tipo_despesa/', tipos, name='tipo'),
    path('pagamentos/', pagamentos, name='pagamento'),
    
]
