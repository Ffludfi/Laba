@echo off
set /p num1=Введите первое число: 
set /p num2=Введите второе число: 
set /a sum=%num1% + %num2%
echo Сумма чисел: %sum%
pause