@echo off
set /P b=number one : 
set /P a=number two : 
set /A sum = %a% + %b%
echo sum %a% and %b% = %sum%
pause