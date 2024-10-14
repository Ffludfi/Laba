@ECHO OFF 
SET /P way = Enterkatalog 
SET /A kol = 0 
FOR /R %1 %%f in (%way%.) DO SET /A kol = kol + 1
ECHO number  of subdirectories: %kol%
pause