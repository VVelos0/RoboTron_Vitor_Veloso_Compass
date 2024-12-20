*** Settings ***
Library            SeleniumLibrary
Documentation      Esses testes são do Site ServRest





*** Variables ***
${URL}            https://serverest.dev/




*** Test Cases ***

Cenario 1: GET Todos usuarios 200
    Criar sessao
    GET Endpoints /usuarios
    Validar Status Code "200"


*** Keywords ***
Criar sessao      
    Create session      servrest     https://serverest.dev/

GET Endpoints /usuarios
    $(response}               GET on session        servrest        /usuarios
    Set Global Variables        ${response}

Validar Status Code "${statuscode}"
    Should be True     $(response.status_code} == ${statuscode}