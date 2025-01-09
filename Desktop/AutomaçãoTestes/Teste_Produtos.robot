*** Settings ***
Library        RequestsLibrary
Library        String
Resource    ../resources/APIResource.resource
Resource    ../resources/APITest.robot



*** Variables ***
${BASE_URL}      https://serverest.dev
${TOKEN_AUTH}     Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImZ1bGFub0BxYS5jb20iLCJwYXNzd29yZCI6InRlc3RlIiwiaWF0IjoxNzM2MjIzMzg0LCJleHAiOjE3MzYyMjM5ODR9.Hzf6Mr8AWbVuUO-fQzvCf4ka69ATGe2K6_wOP2fd49c
${id_produto}   


*** Test Cases ***

POST Endpoint /produtos
      &{header}    Create Dictionary    authorization=${token_auth}
      &{payload}     Create Dictionary           nome=aaabvAasssssssssss  preco=433233433444444    descricao=Mouse    quantidade=100
       Create Session    serverest    ${BASE_URL}
     ${resposta}    POST On Session    serverest    /produtos    data=${payload}    headers=${header}
      Log To Console        resposta: ${resposta.content}    
      Set Global Variable      ${resposta}

DELETE Endpoint /produtos
            &{header}    Create Dictionary    authorization=${token_auth}
            ${resposta}    DELETE On Session       serverest    /produtos/${id_produto}    headers=${header}
            Log To Console        resposta: ${resposta.content}    
            Set Global Variable      ${resposta}


Validar Ter criado produto
          Should Be Equal      ${resposta.json()["message"]}    Cadastro realizado com sucesso
         Should Not Be Empty    ${resposta.json()["_id"]}   
         ${id_produto}    Set Variable    ${resposta.json()["_id"]}
        Log To Console    ID Produto: ${id_produto}
        Set Global Variable    ${id_produto}