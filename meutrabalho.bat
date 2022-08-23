:PainelComando
cls
@echo ===========================================================================================
@echo Painel de Comando do Anzardo
@echo Seleciona sua opcao:
@echo -Opcao "notas" : Abrir outro bloco de notas
@echo -Opcao "data" : Alterar data do computador
@echo -Opcao "version": Mostrar a versao atual do computador
@echo -Opcao "diretorio": Mostrar o diretorio
@echo Caso possua uma duvida sobre como funciona, digite "help"

@echo -Digite o nome da opcao que deseja acessar:
@set /p variavel=
@if %variavel% EQU notas GOTO :opcao1 
@if %variavel% EQU data GOTO :opcao2  
@if %variavel% EQU version GOTO :opcao3  
@if %variavel% EQU diretorio GOTO :opcao4  
@if %variavel% EQU help GOTO :help
:end


:opcao1
cls
@echo ===========================================================================================
@echo Eu sou um bloco de texto bacana, e irei abrir um bloco de notas
@pause
@start outrotrabalho.txt
@pause
@GOTO :encerrarprograma
:end

:opcao2
cls
@echo ===========================================================================================
@echo Sou capaz de alterar a data de seu computador
@date
@date /t
@pause
@GOTO :encerrarprograma
:end

:opcao3
cls
@echo ===========================================================================================
@echo Irei mostrar a versao atual do seu computador
@ver
@pause
@GOTO :encerrarprograma
:end

:opcao4
cls
@echo ===========================================================================================
@echo Tambem irei mostrar o diretorio deste arquivo
@dir
@pause
@GOTO :encerrarprograma
:end

:help
cls
@echo ===========================================================================================
@echo Digite o comando que deseja para acessar a sua devida aba
@pause
@GOTO :PainelComando


:encerrarprograma
cls
@echo ===========================================================================================
@echo Deseja continuar usando o programa? Digite o numero da opcao que deseja realizar:
@echo Opcao 1: Sim
@echo Opcao 2: Nao
@set /p variavelencerrar=
@if %variavelencerrar% EQU 1 GOTO :PainelComando
@if %variavelencerrar% EQU 2 exit
:end