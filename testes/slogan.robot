*** Settings ***
Library   Browser

Test Setup      start test
Test Teardown   finish test

Resource        ../resources/pages/main.resource

*** Variable ***
${LOGO}         Conectando colecionadores de figurinhas da copa.  

*** Test Cases ***
Example Test
  Home Page login