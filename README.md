# Desafio_Viver_de_Teste

Desafio viver de testes!

## Sobre a execução do projeto: 

## Requisitos para execução:
1. Python 3.10  https://www.python.org/downloads/
2. Abra o prompt de command e digite: python --version
3. esse comando mostra se o python foi instalado.
4. digite: pip --version
5. esse comando mostra se o pip foi instalado;
6. se os dois foram instalados corretamente, execute o comando para instalar o robotframework:
7. pip install robotframework
8. senão foi instalado pode ter mais informações de como instalar aqui: https://robotframework.org
9. Após instalado, execute o comando para instalar as dependencias do seleniumLibrary para robotframework
10. pip install --upgrade robotframework-seleniumlibrary
11. agora, baixe o chromedriver, ('https://chromedriver.chromium.org/downloads') da mesma versão do chrome, e copie no diretório raiz do windows: c:/windows
Instruções de instalação
Apenas Python 3.7 ou mais recente é suportado.
# Instruções de instalação
Instale o node.js, por exemplo, de https://nodejs.org/en/download/
Atualize o pip pip install -U pippara garantir que a versão mais recente seja usada
Instale o robotframework-browser a partir da linha de comando:pip install robotframework-browser
Instale as dependências: execute rfbrowser init no prompt de comando
se o rfbrowser não for encontrado, tente python -m Browser
para começar o projeto, instale o Browser: browser init, no prompt de comando.

## Execução
### Local
1. Acesso: acessar a raiz do projeto usando um terminal
2. Acesso: acessar a raiz do projeto cd testes e teclando enter
3. executar o teste completo, execute o comando: robot -d ./log login.robot