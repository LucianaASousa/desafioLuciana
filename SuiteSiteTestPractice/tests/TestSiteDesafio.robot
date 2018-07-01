*** Settings ***
Resource          ../resource/Resource.robot
Test Setup        Abrir navegador
## Test Teardown     Fechar navegador

*** Test Case ***
Cenário 01: Entrada de parâmetros para busca
    Dado que estou na página home do site
    Quando eu digitar as informações "São Paulo - Viracopos (VCP)", "Belo Horizonte - Confins (CNF)", "03/07/2018", "10/07/2018", "3"
    Então as informações do voo devem ser listadas se forem referentes a voos que satisfaçam as condições de busca
    
