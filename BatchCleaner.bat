@echo off
title BatchCleaner by X_koteczek_X (NoRelease 0.1.0)

echo BatchCleaner (NoRelease 0.1.0)
echo.
echo 1 - Regedit
set /p select=Select number: 
if %select%==1 goto registry

:registry
cls
echo 1 - Disable Hibernation
echo 2 - Priority for Games
set /p select=Select number: 
if %select%==1 goto reg1

:reg1
cd Regedit
start DisableHibernation.reg
cd..
goto registry

:reg2
cd Regedit
start GamesPriority.reg
cd..
goto registry