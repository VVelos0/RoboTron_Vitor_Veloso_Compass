
*** Settings ***
Library        RequestsLibrary
Library        String
Resource       ../resources/APIResource.resource
Resource       ../resources/APITest.robot





*** Variables ***
${email_para_login}       fulano@qa.com
${password_para_login}        teste


*** Keywords ***
POST Endpoint /Login
     &{payload}  Create Dictionary              email=${email_para_login}      password=${password_para_login} 
     ${resposta}    POST On Session       serverest     /login    data=${payload}
     Log To Console        resposta: ${resposta.content}    
     Set Global Variable      ${resposta}

 Validar ter logado

    Should Be Equal      ${resposta.json()["message"]}     Login realizado com sucesso
    Should Not Be Empty    ${resposta.json()["authorization"]}    

 Fazer Login e Armazenar token
        POST Endpoint /Login
        Validar ter logado
        ${token_auth}    Set Variable     ${resposta.json()["authorization"]}   
        Log To Console        Token salvo: ${token_auth}
        Set Global Variable         ${token_auth}