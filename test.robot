***Settings***

Library     SeleniumLibrary


***Variables***
${br} =     chrome

***Test Cases***
test
    abrir



***Keywords***
abrir
    Open Browser    http:\\www.google.com.br  ${br}
    Title Should Be     Google
    Input Text      name:q  Roque
    Press Key        name:q  \\13

    sleep 5
    Close Browser