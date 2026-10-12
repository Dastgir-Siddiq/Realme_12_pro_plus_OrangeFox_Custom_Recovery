# Realme 12 Pro Plus OrangeFox Custom Recovery (ferrarri)

Official OrangeFox Recovery Project R12.1 build for the **realme 12 Pro+ 5G** (codename: `ferrarri`).

---

## 📌 Build Details

- **Device:** realme 12 Pro+ 5G
- **Codename:** `ferrarri`
- **Recovery Version:** OrangeFox R12.1 (AOSP-eng)
- **Status:** Stable / Hardware Verified

---

## 📦 File Information & Checksums

| File | Size | SHA-256 Checksum |
| :--- | :--- | :--- |
| `Realme_12_pro_plus_OrangeFox_Custom_Recovery.img` | 104,857,600 bytes (100 MB) | `397d7e95ff4046ad945edd2b38d0e4144ab7797be54b666071bd3fab3a1f4ccb` |
| `Realme_12_pro_plus_OrangeFox_Custom_Recovery.zip` | 29,919,317 bytes (~28.5 MB) | `6a83b84d7098b511a89b03551f56cff276fd14b7d2083cab2502131d96706ffe` |

To verify the integrity of the downloaded files:
```bash
sha256sum -c SHA256SUMS
md5sum -c Realme_12_pro_plus_OrangeFox_Custom_Recovery.zip.md5
```

---

## 📥 Installation Instructions

### Method 1: Using Fastboot (Recommended)

1. Connect your device to your PC and reboot to Fastboot mode:
   ```bash
   adb reboot bootloader
   ```
2. Verify that your device is detected:
   ```bash
   fastboot devices
   ```
3. Flash the recovery image to the active slot:
   ```bash
   fastboot flash recovery Realme_12_pro_plus_OrangeFox_Custom_Recovery.img
   ```
4. Reboot into OrangeFox Recovery:
   ```bash
   fastboot reboot recovery
   ```

> **Automated Script:** You can also run `./flash_recovery.sh` (Linux/macOS) or double-click `flash_recovery.bat` (Windows).

### Method 2: Flashable ZIP in Custom Recovery (OrangeFox / TWRP)

1. Copy `Realme_12_pro_plus_OrangeFox_Custom_Recovery.zip` (and optional `Realme_12_pro_plus_OrangeFox_Custom_Recovery.zip.md5`) to internal storage or USB OTG.
2. In OrangeFox / TWRP, tap **Install** (or **Files**).
3. Select `Realme_12_pro_plus_OrangeFox_Custom_Recovery.zip`.
4. Swipe to confirm flash (flashes directly to the active slot with built-in checksum verification).
5. Tap **Reboot Recovery**.

### Method 3: Flash Image (.img) in OrangeFox / TWRP

1. Copy `Realme_12_pro_plus_OrangeFox_Custom_Recovery.img` to internal storage or USB OTG.
2. In OrangeFox / TWRP, tap **Files** $\rightarrow$ switch filter to **Install Image**.
3. Select `Realme_12_pro_plus_OrangeFox_Custom_Recovery.img`.
4. Choose the **Recovery** partition and swipe to confirm flash.
5. Tap **Reboot** $\rightarrow$ **Recovery**.

---

## ⚠️ Notes & Disclaimer

- Ensure your bootloader is unlocked before attempting to flash custom recovery.
- Flashing custom software carries inherent risks. Always maintain a current backup of your essential data before flashing.
