*** Settings ***
Documentation            Testes da Amazon.com.br com somente duas categorias de informatica
Test Setup               Abrir o navegador
Resource                 amazon_resources.robot
# Test Teardown            Fechar o navegador
*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletronicos"
    [Documentation]    Acessando o Menu eletronicos e verificando as categorias
    [Tags]             Menus e categorias
      Acessar home page do site https://www.amazon.com.br/
#     Entrar no menu "Eletrônicos"
#     Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
#     Verificar se aparece a frase "Eletrônicos e Tecnologia"
#     Verificar se aparece a categoria "Computadores e informatica"




# Caso de teste 02 - Pesquisa de produtos
#     [Documentation]   Pesquisando a categoria e informatica de video games
#     [Tags]            busca_produtos lista_produtos
#     https://www.amazon.com.br/
#     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#     Clicar no botão de pesquisa
#     Exibir a tela com o resultado da pesquisa, listando o produto pesquisando
