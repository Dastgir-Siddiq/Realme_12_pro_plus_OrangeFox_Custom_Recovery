#!/bin/bash
# OrangeFox Recovery Flashing Helper Script
# Device: realme 12 Pro+ 5G (ferrarri)
# Maintainer: Dastgir Siddiq

set -e

IMG="Realme_12_pro_plus_OrangeFox_Custom_Recovery.img"

if [ ! -f "$IMG" ]; then
    echo "[-] Error: Recovery image file '$IMG' not found!"
    exit 1
fi

echo "=========================================================="
echo " OrangeFox Recovery R12.1 Flasher for ferrarri"
echo " Maintainer: Dastgir Siddiq"
echo "=========================================================="
echo "[*] Waiting for device in Fastboot mode..."
fastboot wait-for-device

echo "[*] Flashing recovery image to slot A..."
fastboot flash recovery_a "$IMG"

echo "[*] Flashing recovery image to slot B..."
fastboot flash recovery_b "$IMG"

echo "[+] Successfully flashed OrangeFox Recovery to both slots!"
echo "[*] Rebooting directly into Recovery..."
fastboot reboot recovery
echo "[+] Done!"
