@echo off
setlocal enabledelayedexpansion

set /P num=tell num (or  '-' for exit): 

rem Инициализируем максимальное и минимальное числа
set max=!num!
set min=!num!

:Loop
if "!num!"=="-" goto EndLoop

rem Проверка, является ли ввод числом
setlocal enabledelayedexpansion
set /a currentNum=!num!

if !currentNum! gtr !max! (
    set max=!currentNum!
)

if !currentNum! lss !min! (
    set min=!currentNum!
)



set /P num=tell numtell num (or  '-' for exit): 
goto Loop
endlocal
:EndLoop
echo max num: !max!
echo min num: !min!
pause

endlocal