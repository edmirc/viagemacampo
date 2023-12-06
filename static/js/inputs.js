function somarkm(){
    var despesa = document.getElementById("tipo");
    var input1 = document.getElementById("kmi");
    var input2 = document.getElementById("kmf");
    var input3 = document.getElementById("kmr");
    var input4 = document.getElementById("consumo");
    var input5 = document.getElementById("qnt");
    despesa = despesa.value
    if (despesa == 5){
        var valor1 = parseInt(input1.value);
        var valor2 = parseInt(input2.value);
        var valor = parseFloat(input5.value);
        var resultado = valor2 - valor1;
        input3.value = resultado;
        var rodado = parseFloat(input3.value);
        if (valor > 0){
            var media = resultado / valor;
            input4.value = media.toFixed(2);
        }else{
            alert("Quantidade inválido!!!", "Aviso", "OK")
        };
    };
};


function blockeio(){
    var despesa = document.getElementById("despesa");
    despesa = despesa.value;
    if (despesa != 5){
        document.getElementById("kmin").value = 0;
        document.getElementById("kmf").value = 0;
        document.getElementById("kmr").value = 0;
        document.getElementById("media").value = 0;
        document.getElementById("cidade").value = "1";
        document.getElementById("kmin").disabled = true;
        document.getElementById("kmf").disabled = true;
        document.getElementById("kmr").disabled = true;
        document.getElementById("media").disabled = true;
        document.getElementById("cidade").disabled = true;
    }else{
        document.getElementById("kmin").value = "";
        document.getElementById("kmf").value = "";
        document.getElementById("kmr").value = "";
        document.getElementById("media").value = "";
        document.getElementById("kmin").disabled = false;
        document.getElementById("kmf").disabled = false;
        document.getElementById("kmr").disabled = false;
        document.getElementById("media").disabled = false;
        document.getElementById("cidade").disabled = false;
        document.getElementById("cidade").value = "selecione";
    }
}