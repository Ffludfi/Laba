@echo off
REM Запрашиваем у пользователя путь к каталогу
set /p directory=set way catalog: 

REM Проверяем, что каталог существует
if not exist "%directory%" (
    echo misstakes:thats catalof is not working.
    goto :eof
)

REM Запрашиваем у пользователя расширение файлов
set /p extension=put (no tochka, naprimer, txt): 

REM Проверяем, что расширение не пустое
if "%extension%"=="" (
    echo oshibka: ne ykazano rashirenie failov.
    goto :eof
)

REM Выводим список файлов с заданным расширением
echo fales s rachireniyami .%extension% in cataloge %directory%:
REM Перебор %%f переменная , N-имя x - расширениефайла %%~nxf обьединяет файл 
for %%f in ("%directory%\*.%extension%") do (
    echo %%~nxf
)

REM Завершение
echo ready.
pause