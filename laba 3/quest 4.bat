@echo off
SET /P katalog1=enter first number
SET /P katalog2=enter second number 
ECHO %katalog1% copied to %katalog2%
XCOPY %katalog1% %katalog2% /S
pause 