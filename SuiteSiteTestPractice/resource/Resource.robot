*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}   chrome
${URL}   https://www.voeazul.com.br/

*** Keywords ***
#### Setup
Abrir navegador
    Open Browser     about:blank    ${BROWSER}

#### Passo-a-Passo
Dado que estou na página home do site
    Go To    https://www.voeazul.com.br/
    Title Should Be   Azul - Linhas Aéreas Brasileiras. Você lá em cima.

Quando eu digitar as informações "${ORIGEM}", "${DESTINO}", "${PARTIDA}", "${RETORNO}", "${PASSAGEIROS}"
    Input Text    id=ticket-origin1   ${ORIGEM}
    Input Text    id=ticket-destination1    ${DESTINO}
    Input Text    id=ticket-departure1    ${PARTIDA}
    Input Text    id=ticket-arrival1    ${RETORNO}
    Input Text    id=ticket-adults    ${PASSAGEIROS}

Então as informações do voo devem ser listadas se forem referentes a voos que satisfaçam as condições de busca
    Click Button    Buscar passagens
