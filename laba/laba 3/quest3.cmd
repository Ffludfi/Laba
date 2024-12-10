@echo off
set /p "Folder=pytb: "
if not exist "%Folder%" (
    echo nety takogo.
    pause
    exit /b
)


set Count=0
REM счетчик строк  delims разделителей нет цельная строка /ad папки /s рекурсия /и вывод в чистой форме
for /f "delims=" %%D in ('dir /ad /b /s "%Folder%"') do set /a Count+=1
echo col-vo pofkatalogov: %Count%
pause