@echo off
setlocal

:input_path
set /p "directory=pytb: "

if "%directory%"=="" (
    echo zero.
    goto input_path
)

if not exist "%directory%" (
    echo katalog "%directory%" no working.
    goto input_path
)

:input_extension
set /p "extension=rashirenie "

if "%extension%"=="" (
    echo rashirenie is not clear.
    goto input_extension
)

echo fails from rashirenie %extension% in katalog %directory%:
for %%f in ("%directory%\*.%extension%") do (
    if exist "%%f" (
        echo %%~nxf
    )
)

endlocal
pause