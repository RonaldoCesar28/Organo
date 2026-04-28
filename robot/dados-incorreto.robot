*** Settings ***
Library          SeleniumLibrary
Resource         setup-teardown.robot
Test Setup       Dado que eu acesse o Organo
Test Teardown    Fechar o navegador

*** Variables ***
${CAMPO_CARD}    id:form-botao

*** Test Cases ***
Verificar se quando um campo não for preenchido corretamente o sistema exibe uma mensagem de campo obrigatório
    Dado que eu clique no botão criar card
    Então o sistema deve apresentar uma mensagem de campo obrigatório

*** Keywords ***
Dado que eu clique no botão criar card   
    Wait Until Element Is Visible    ${CAMPO_CARD}    timeout=15s
    Click Element    ${CAMPO_CARD}  

Então o sistema deve apresentar uma mensagem de campo obrigatório  
    Element Should Be Visible    id:form-nome-erro
    Element Should Be Visible    id:form-cargo-erro
    Element Should Be Visible    id:form-times-erro 
    Sleep    15s