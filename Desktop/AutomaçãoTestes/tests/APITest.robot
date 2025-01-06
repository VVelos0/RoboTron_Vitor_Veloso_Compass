*** Settings ***
Resource    ../resources/APIResource.resource
Resource    ../ServRest.robot

*** Variables ***

*** Test Cases ***

# cenario 01: Realizar Login com Sucesso na ServRest
    # Realizar Login 
    


cenario 02: Cadastrar Novo usuario com sucesso na ServRest
    Criar novo usuario
    Cadastrar o usuario criado na ServRest
    
  

cenario 03: Get todos os usuarios 200
         Criar sessão
         Get Endpoint /usuarios
         Validar Status Code "200"
       

cenario 04: POST cadastrar o usuario 201
      Criar sessão 
      POST Endpoint /usuarios
      Validar Code "$statuscode" 
  

 cenario 05: PUT editar o usuario 
     Criar sessão
     PUT Endpoint /usuarios
     Validar Status Code
  
 cenario 06: DELETE deletar usuario 
        DELETE Endpoint /usuarios
        Validar Status Code
      
        

# cenario 07: Listar Produtos cadastrados na ServRest com sucesso
#       que estou na tela Listar Produtos
#         estou listando produtos na ordem alfabetica e categorias
#        foi recebido com sucesso pelo sistema
#      o meu procedimento de realizar Listar Produtos na ServRest com sucesso


# cenario 08: Excluir Produtos cadastrados na ServRest com sucesso
#      que estou na tela excluir produtos
#        estou excluindo produtos por nomes e categorias
#      recebido com sucesso pelo sistema
#       foi excluido com sucesso os Produtos cadastrados no site ServRest


# cenario 09: Editar Produtos cadastrados com sucesso na ServRest
#      que estou na tela Editar Produtos
#     estou editando produtos por nomes e categorias
#     foi recebido com sucesso pelo sistema
#      editar produtos no site da ServRest foi com sucesso


# cenario 10: Consultar todos os Produtos no carrinho na ServeRest com sucesso
#     estou na tela Cadastrar Carrinho
#     estou adicionando produtos ao carrinho
#     realizado com sucesso o carrinho
#     meu procedimento de realizar Cadastrar Carrinho na ServRest com sucesso



# cenario 11: Listar Carrinhos no site da ServRest com sucesso    
#     # Cadastrar carrinho
    # Listar Carrinho cadastrados
    # Buscar Carrinho por ID
    # Excluir Carrinho
    # Excluir Carrinho e retornar produtos ao estoque

       