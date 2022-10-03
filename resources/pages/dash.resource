*** Settings ***
Documentation           Page Dashboard

Library                 Browser

*** Variable ***

${FIGURINHA}    Aquela figurinha incrível a um clique de distância.

*** Keywords ***

MessageLogin
    Get Text            css=.page-header strong    Equal     ${FIGURINHA}
    Sleep   2

Sourch Legend
    [Arguments]     ${TARGET}
    Fill Text       input[type=text]        ${TARGET}
    Click           css=button >> text=Buscar
Select sticker
    [Arguments]     ${name}
    Click           xpath=//img[@alt="${name}"]/..

Contact
    Click       css=img[alt=Whatsapp]

Valid massage Whatsapp
    [Arguments]     ${name}
    ${expext_massage}       Set Variable
    ...     Oi, achei o seu contato no Trade Sticker. Estou interessado(a) na figurinha do ${name}, bora negociar?

    Switch Page   NEW
    
    Wait For Elements State
    ...     css=p >> text=${name}
    ...     visible
    ...     5000