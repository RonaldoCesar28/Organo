*** Settings ***
Library    SeleniumLibrary

*** Test Cases *** 
Abrir navegador e acessar o site do organo
    Open Browser    url=http://localhost:3000/    browser=Chrome

Preencher os campos do formulário
    Input Text    id:form-nome      Ronaldo
    Input Text    id:form-cargo     Desenvolvedor
    Input Text    id:form-imagem    https://picsum.photos/200/300
    Click Element    class:lista-suspensa
    Click Element    //option[contains(.,'Devops')] 
    Click Element    id:form-botao
    Element Should Be Visible    class:colaborador

