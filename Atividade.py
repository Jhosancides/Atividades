ATIVIDADE 1
nome = "ANA"
idade = "25"
cidade = "Curitiba"

print(f"Meu nome é {nome} minha idade é {idade}  moro em cidade {cidade}")


ATIVIDADE 2

n1 = float (input("Digite um numero:"))
n2 = float (input("Digite um numero:"))

print (n1+n2)
print (n1-n2)
print (n1*n2)
print (n1/n2)


ATIVIDADE 3

numero = int(input("Digite um numero:"))
print(f"\ntabuada do {numero}:")
for i in range(1, 11):
    resultado = numero *i
    print(f"{numero} * {i} = {resultado}")

ATIVIDADE 4

    while True:
    numero = int(input("Digite um numero:"))
    if numero <3:
        print("Maior!, Digite novamente novamente!")
    elif numero >3:
        print("Menor!, tente novamente.")
    else:
        print(" Parabens, acertou")
        break


ATIVIDADE 5
        Compra = []

for i in range(5):
    item = input(f"Digite o {i+1}° item da lista de compras: ")
    Compra.append(item)
    
    print ("\nSua lista de compras:")
    for indice, item in enumerate(Compra, 1):
        print(f"{indice}, {item}") 




 ATIVIDADE 6

notas = []

for i in range(6):
    nota = float( input(f"Digite a nota do {i+1}°aluno: "))
    notas.append(nota)
    
    maior = max(notas)
    menor = min(notas)
    media = sum(notas) / len(notas)
    
    print(f"\n Maior nota: {maior}")
    print(f"\n Menor nota: {menor}")
    print(f"\n Média da turma: {media:.2f}")



ATIVIDADE 7


def par_ou_impar(n):
    if n % 2 == 0:
        print ("par")
    else:
        print ("impar")

par_ou_impar(5)
par_ou_impar(2)
par_ou_impar(1)



ATIVIDADE 8

ef calcular_imc(peso, altura):
    """ Calcula o IMCcom base no peso(Kg) e altura (m)"""
    return peso / (altura ** 2)
    
    def classificar_imc(imc):
        """ Classificar o IMC de acordo com a tabela padrão"""
        if imc <18.5:
             return "abaixo do peso"
        elif imc < 25:
            return "Normal"
        elif imc < 30:
            return " Sobre peso"
        else:
            return "obesidade"

peso = float(input("Digite seu peso (kg):"))



ATIVIDADE 9


ATIVIDADE 10