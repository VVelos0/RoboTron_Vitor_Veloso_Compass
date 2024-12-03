def maior_de_idade(idade):
    if idade >= 18:
        print('Maior de 18')
    else:
        print('Menor de idade')

# Solicita a idade do usuário
idade = int(input("Digite sua idade: "))
maior_de_idade(idade)
