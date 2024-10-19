@echo off
title BatchCleaner by X_koteczek_X (NoRelease 0.2.0)

echo BatchCleaner (NoRelease 0.2.0)
echo.
echo 1 - Regedit
set /p select=Select number: 
if %select%==1 goto registry

:registry
cls
echo 1 - Disable Hibernation
echo 2 - Disable DVR 1
echo 3 - Disable DVR 2
echo 4 - Fullscreen Fix
echo 5 - Games optimazations
echo 6 - Priority for Games
echo 7 - OptimazationPlus
set /p select=Select number: 
if %select%==1 goto reg1
if %select%==2 goto reg2
if %select%==3 goto reg3
if %select%==4 goto reg4
if %select%==5 goto reg5
if %select%==6 goto reg6
if %select%==7 goto reg7

:reg1
cd Regedit
start DisableHibernation.reg
cd..
goto registry

:reg2
cd Regedit
start DisableDVR1.reg
cd..
goto registry

:reg3
cd Regedit
start DisableDVR2.reg
cd..
goto registry

:reg4
cd Regedit
start fullscreenfix.reg
cd..
goto registry

:reg5
cd Regedit
start GameOptimizations.reg
cd..
goto registry

:reg6
cd Regedit
start GamesPriority.reg
cd..
goto registry

:reg7
cd Regedit
start OptimizationPlus.reg
cd..
goto registry
