print ("Exercicio 2")

Ano = input("O ano é: ")
Mes = input("O mês é: ")
Dia = input("O dia é: ")
N = input("Valor de N: ")

Ano = int(Ano)
Mes = int(Mes)
Dia = int(Dia)
N = int(N)

anos = N // 365
resto_dias = N % 365

meses = resto_dias // 30
dias =  resto_dias % 30

print("Ano é:", anos)
print( "Mes é:", meses)
print("O dia é:", dias)
print("Valor de N", N)
  
  
  
  