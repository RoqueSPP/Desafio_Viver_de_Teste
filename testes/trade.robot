*** Settings ***

Documentation       Logar na pagina do sistema e entrar em contato com o usuario para trocar figurinhas
Library             Browser

Resource       ../resources/pages/main.resource


*** Test Case ***
Deve negociar a figurinha Neynar Legend
     Home Page
     Fill Form  papito@gmail.com  vaibrasil
     MessageLogin
     Sourch Legend   legend
     Select Sticker  Neymar Jr
     Contact
     Valid massage Whatsapp     Neymar Jr
     Sleep      2