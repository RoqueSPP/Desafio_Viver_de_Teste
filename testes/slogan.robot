*** Settings ***
Documentation       Entra na pagina principal do sistema trocando figurinhas
Library   Browser

Test Setup      Start Test
Test Teardown   Finish Test

Resource        ../resources/pages/main.resource

*** Variable ***
${LOGO}         Conectando colecionadores de figurinhas da copa.  

*** Test Cases ***
Deve entrar na Home do sistema
  Home Page login