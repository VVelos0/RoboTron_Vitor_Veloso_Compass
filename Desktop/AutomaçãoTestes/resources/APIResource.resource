*** Settings ***
Library        RequestsLibrary
Library        String

*** Keywords ***

Criar novo usuario
    ${palavra_aleatoria}    Generate Random String    length=4   chars=[LETTERS]
    ${palavra_aleatoria}    Convert To Lower Case    ${palavra_aleatoria}   
    Set Test Variable    ${EMAIL_TESTE}  ${palavra_aleatoria}@emailtest.com 
    Log    ${EMAIL_TESTE} 
   
        
   
     Criar Sessão na ServRest   

Cadastrar o usuario criado na ServRest
      ${body}  Create Dictionary
...    nome=Fulano da Silva
...    email=${EMAIL_TESTE}
...    password=1234
...    administrador=true

    Criar sessão na ServRest
     ${resposta}=    POST On Session
    ...    alias=ServRest
    ...    url=/usuarios
    ...    json=${body}
    Log    ${resposta.status_code}
    Log    ${resposta.json()}
  
Criar sessão na ServRest
     ${headers}=    Create Dictionary    Accept=application/json    Content-Type=application/json
    Create Session    alias=ServRest    url=https://serverest.dev   headers=${headers}