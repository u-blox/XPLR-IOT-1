@echo off
echo.
echo **************************************************************
echo * XPLR-IOT-1 bootloader updater.                             *
echo **************************************************************
echo * Ensure the XPLR-IOT-1 is in bootloader mode.               *
echo * Hold button 1 while resetting or power-cycling the device. *
echo **************************************************************
echo.
set /p COMPORT="Enter XPLR-IOT-1 Interface 0 port number (e.g. COM15): "
echo.
newtmgr.exe --conntype=serial --connstring="%COMPORT%,baud=115200" image upload  SensorAggregation_v0.2.bin

pause
