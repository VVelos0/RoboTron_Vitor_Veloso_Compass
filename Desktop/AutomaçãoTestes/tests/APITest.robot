*** Settings ***
Resource    ../resources/APIResource.resource

*** Variables ***


*** Test Cases ***


cenario 01: Cadastrar Novo usuario com sucesso na ServRest
    Criar novo usuario
    Cadastrar o usuario criado na ServRest
    # Conferir se o usuario foi cadastrado com sucesso