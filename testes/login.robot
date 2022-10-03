*** Settings ***
Documentation       Logar na pagina com sucesso
Library             Browser
Test Setup          start test
Test Teardown       finish test

Resource       ../resources/pages/main.resource


*** Test Case ***
Deve logar com sucesso
    Home Page
     Fill Form  papito@gmail.com  vaibrasil
    messageLogin

Não deve logar com senha incorreta
   Home Page
    Fill Form  papito@gmail.com  kkkkkjjjjhh
    MessageExpect Success
 
Deve exibir notificacao toaster se a senha nao for preenchida
    Home Page
    Fill Form only email  papito@gmail.com
    MessageExpect Only email

Deve exibir notificacao toaster se o email nao for preenchido
    Home Page
    Fill Form only password  vaibrasil
    MessageExpect Only password

Deve exibir notiticacao toaster se email e senha nao forem preenchidos
    Home Page
    Click               css=button >> text=Entrar
    MessageExpect no Email and Password


