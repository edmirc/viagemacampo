from django import forms
from .banco.mybanco import CidadeBanco


class Cidade(forms.Form):
    nome = forms.CharField(label='Nome da Cidade')
    estado = forms.CharField(label='Estado', max_length=2)
    #pagamento = forms.CharField(label='escolha o pagamento',
    #                           widget=forms.Select(choices=[('value1', 'Label1'), ('value2', 'Label2')]))

    def salve_dados(self):
        cid = CidadeBanco()
        nome = self.cleaned_data['nome']
        estado = self.cleaned_data['estado']
        id = cid.insert_cidade(nome, estado)
        return id



