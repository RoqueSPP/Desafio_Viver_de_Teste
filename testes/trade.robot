*** Settings ***

Documentation       Logar na pagina com sucesso
Library             Browser

Resource       ../resources/pages/main.resource


*** Test Case ***
Deve negociar a figurinha Neynar Legend
     Home Page
     Fill Form  papito@gmail.com  vaibrasil
     messageLogin
     sourch Legend  legend
     select sticker  Neymar Jr
     contct
     valid massage Whatsapp     Neymar Jr
     Sleep      2