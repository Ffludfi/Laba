@ECHO OFF
SET /A n=%1
SET /A f=%1
:BegLoop


IF %1 LEQ 0 GOTO Exit
IF %1 GEQ 50 GOTO Exit
IF %n% GTR 1 GOTO Loop
ECHO %1!=%f%
Exit /b
:Loop
SET /A n = n-1
SET /A f = f*n
GOTO BegLoop

:Exit
ECHO not correnct parameter
Exit /b




