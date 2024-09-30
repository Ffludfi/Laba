@ECHO OFF
::CLS
:: Создание переменной MyVar
SET MyVar=hallo
:: Изменение переменной
SET MyVar=%MyVar%
ECHO biba: %MyVar% 
:: Удаление переменной MyVar
SET MyVar=
ECHO boba: %WinDir%
pause