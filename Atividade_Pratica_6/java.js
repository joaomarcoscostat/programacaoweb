var nome=prompt("Digite seu nome:")
var altura=prompt("Digite sua altura")
var peso=prompt("Digite seu peso")

console.log(nome)

altura=parseFloat(altura)
console.log(altura)
peso=parseFloat(peso)
console.log(peso)

altura=(altura/100)
console.log(altura)

function imc(altura,peso)
{
    
    return peso/(altura*altura)
    
}


var indice=parseFloat(imc(altura,peso).toFixed(2))

var mensagem

if(indice<16)
    {
        mensagem='Baixo peso muito grave'
    }

else if(indice>=16 && indice<17)
    {
        mensagem='Baixo peso grave'
    }

else if(indice>=17 && indice<18.50)
    {
        mensagem='Baixo peso'
    }
        
else if(indice>=18.50 && indice<25)
    {
        mensagem='Peso normal'
    }

else if(indice >=25 && indice<30)
    {
        mensagem='Sobrepeso'
    }

else if(indice>=30 && indice<35)
    {
        mensagem='Obesidade grau I'
    }

else if(indice >=35 && indice<40)
    {
        mensagem='Obesidade grau II'
    }

else if(indice >=40)
    {
        mensagem='Obesidade grau III'
    }

console.log(mensagem)

document.write(nome+" possui indice de massa corporal igual à "+indice+", sendo classificado como: "+mensagem)


