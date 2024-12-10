@ECHO OFF
:BegLoop
SET /P Number=enter number 
IF %Number% == - goto ExitLoop

IF NOT DEFINED MIN SET MIN=%Number%
IF NOT DEFINED MAX SET MAX=%Number%

IF %Number% LEQ %MIN% SET MIN=%Number%
IF %Number% GEQ %MAX% SET MAX=%Number%



GOTO BegLoop

:ExitLoop
ECHO Min= %MIN%
ECHO Max= %MAX%
pause
