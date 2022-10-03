
*** Settings ***
Documentation           Login page

Library                 Browser

*** Variable ***
${LOGO}                 Conectando colecionadores de figurinhas da copa.
${ONLY_EMAIL}           Por favor, informe a sua senha secreta!
${OLNY_PASSWORD}        Por favor, informe o seu email!
${EMAIL_PASSWORD}       Por favor, informe suas credenciais!

*** Keywords ***

Home Page
    
    New Page    https://trade-sticker-dev.vercel.app  
    Get Text    .logo-container h2    contains    ${LOGO}
    ${TEXT}     Get Text    .logo-container h2
    Log To Console      ${TEXT}


Fill Form
    [Arguments]     ${email}        ${password}
    Fill Text          css=input[name="email"]     ${email}
    Fill Text          css=input[name="password"]   ${password}
    Click               css=button >> text=Entrar
MessageExpect Success
    Wait For Elements State     xpath=(//div)[14]       visible    2
     ${TEXT}     Get Text    xpath=(//div)[14]

    Log To Console      ${TEXT}
    Sleep               2

Fill Form only email
    [Arguments]     ${email}
    Fill Text          css=input[name="email"]     ${email}
    Click               css=button >> text=Entrar
MessageExpect Only email
    Wait For Elements State     xpath=(//div)[14]       visible    2
     ${TEXT}     Get Text    xpath=(//div)[14]      equal   ${ONLY_EMAIL}
    Log To Console      ${TEXT}
    Sleep               2

Fill Form only password
    [Arguments]     ${password}
    Fill Text          css=input[name="password"]   ${password}
    Click               css=button >> text=Entrar

MessageExpect Only password
    Wait For Elements State     xpath=(//div)[14]       visible    2
     ${TEXT}     Get Text    xpath=(//div)[14]      equal     ${OLNY_PASSWORD}
    Log To Console      ${TEXT}
    Sleep               2

MessageExpect no Email and Password
    Wait For Elements State     xpath=(//div)[14]       visible    2
     ${TEXT}     Get Text    xpath=(//div)[14]      equal     ${EMAIL_PASSWORD}
    Log To Console      ${TEXT}
    Sleep               2