@echo off
set mineoptimizpath=%cd%
cd config
set configpath=%cd%
rmdir /s /q .\fancymenu
cd %mineoptimizpath%\guirequired\engmode\cnbackup
xcopy ".\fancymenu" "%configpath%\fancymenu" /E /H /I
rmdir /s /q .\fancymenu
echo Finished!
echo You need to restart the game to apply the changes
pause