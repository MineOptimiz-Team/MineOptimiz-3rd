@echo off
set mineoptimizpath=%cd%
cd config
xcopy .\fancymenu "%mineoptimizpath%\guirequired\engmode\cnbackup\fancymenu" /E /H /I
rmdir /s /q .\fancymenu
set configpath=%cd%
cd /d %mineoptimizpath%\guirequired\engmode\
xcopy .\fancymenu "%configpath%\fancymenu" /E /H /I
echo Finished!
echo You need to restart the game to apply the changes
pause