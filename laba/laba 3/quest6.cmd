@echo off
:: Запрашиваем ввод числа для вычисления факториала
set /p n=num(1-49): 

:: Проверка на корректность ввода
IF "%n%"=="" (
    ECHO Пожалуйста, введите число.
    exit /b
)

IF %n% LEQ 0 (
    ECHO num > 0
    exit /b
)

IF %n% GEQ 50 (
    ECHO num > 50.
    exit /b
)

:: Инициализация переменной для факториала
SET /A f=1

:: Вычисление факториала
:BegLoop
IF %n% LEQ 1 GOTO Exit
SET /A f=f*n
SET /A n=n-1
GOTO BegLoop

:: Вывод результата
:Exit
ECHO factorial: %f%
pause
exit /b