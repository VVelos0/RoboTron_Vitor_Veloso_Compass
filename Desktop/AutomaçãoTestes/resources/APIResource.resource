*** Settings ***
Library        RequestsLibrary
Library        String
Library  


*** Variables ***
${BASE_URL}      https://serverest.dev
${body}           {"nome": "Produto Teste", "preco": 10.0}




*** Keywords ***



Criar novo usuario
    ${palavra_aleatoria}    Generate Random String    length=4   chars=[LETTERS]
    ${palavra_aleatoria}    Convert To Lower Case    ${palavra_aleatoria}   
    Set Test Variable    ${EMAIL_TESTE}  ${palavra_aleatoria}@emailtest.com 
    Log    ${EMAIL_TESTE} 


Criar Produtos na Serverest
     ${Produto_Teste}    Generate Random String    length=10   chars=[LETTERS]     
    ${Produto_Teste}    Convert To Lower Case    ${Produto_Teste}   
    Set Test Variable    ${Produtos_Teste}  ${Produto_Teste}UmProdutoAleatorio
    Log    ${Produto_Teste} 
        
   
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




 Criar Produtos na ServRest
    
    Create Session    ServRest    ${BASE_URL}
    ${RESPOSTA}=    POST    ServRest    /produtos    json=${body}
    Log    ${RESPOSTA.status_code}
    Log    ${RESPOSTA.json()}
    Should Be Equal As Integers    ${RESPOSTA.status_code}    201


Criar sessão
    Create Session        serverest       https://serverest.dev

Get Endpoint /usuarios
        ${resposta}=    GET On Session    serverest       /usuarios


        Set Global Variable    ${resposta}
Validar Status Code "200"       
           Log    ${resposta.status_code}
            Log    ${resposta.json()}

POST Endpoint /usuarios
        &{payload}  Create Dictionary        nome=jarbas try       email=testeia2233a@gmail.com    password=1234    administrador=true
        ${resposta}    POST On Session       serverest     /usuarios    data=${payload}
        Log To Console        resposta: ${resposta.content}    
        Set Global Variable      ${resposta}
    

Validar Code "${statuscode}"    
    ${resposta}=    Create Dictionary    status_code=201

PUT Endpoint /usuarios
         &{payload}  Create Dictionary        nome=jarbas vicius     email=testeia2299a@gmail.com    password=2345    administrador=true
         ${resposta}    PUT On Session       serverest         /usuarios/gHtj8L1m17txs0g8           data=${payload}
        Log To Console        resposta: ${resposta.content}    
        Set Global Variable      ${resposta}


DELETE Endpoint /usuarios
      ${resposta}    DELETE On Session       serverest         /usuarios/0uxuPY0cbmQhpEz1   
      Log To Console        resposta: ${resposta.content}    
      Set Global Variable      ${resposta}
    


Validar Status Code     
           Log    ${resposta.status_code}
           Log    ${resposta.json()}


Validar Status Code "${StatusCode}"
    Should Be True  ${resposta.status_code} == ${StatusCode}


Criar sessão na ServRest
     ${headers}=    Create Dictionary    Accept=application/json    Content-Type=application/json
    Create Session    alias=ServRest    url=https://serverest.dev   headers=${headers}

Cadastrar o usuario criado na ServRest
     ${headers}=    Create Dictionary    Accept=application/json    Content-Type=application/json
    Create Session    alias=ServRest    url=https://serverest.dev   headers=${headers}