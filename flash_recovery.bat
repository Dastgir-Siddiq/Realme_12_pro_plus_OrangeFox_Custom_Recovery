@echo off
rem OrangeFox Recovery Flashing Helper Script for Windows
rem Device: realme 12 Pro+ 5G (ferrarri)
rem Maintainer: Dastgir Siddiq

set IMG=Realme_12_pro_plus_OrangeFox_Custom_Recovery.img

if not exist "%IMG%" (
    echo [-] Error: Recovery image file '%IMG%' not found!
    pause
    exit /b 1
)

echo ==========================================================
echo  OrangeFox Recovery R12.1 Flasher for ferrarri
echo  Maintainer: Dastgir Siddiq
echo ==========================================================
echo [*] Checking connected Fastboot devices...
fastboot devices

echo [*] Flashing recovery image to active slot...
fastboot flash recovery %IMG%
if %errorlevel% neq 0 (
    echo [-] Flashing recovery failed!
    pause
    exit /b %errorlevel%
)

echo [+] Successfully flashed OrangeFox Recovery!
echo [*] Rebooting directly into Recovery...
fastboot reboot recovery
echo [+] Done!
pause
