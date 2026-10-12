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
| `Realme_12_pro_plus_OrangeFox_Custom_Recovery.zip` | 29,948,175 bytes (~28.5 MB) | `9511c00bca455ad5561ddf9181cb8fc5185e85ba3153250cb509bbe8eab69cfd` |

To verify the integrity of the downloaded recovery image:
```bash
sha256sum -c SHA256SUMS
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
3. Flash the recovery image to both slots:
   ```bash
   fastboot flash recovery_a Realme_12_pro_plus_OrangeFox_Custom_Recovery.img
   fastboot flash recovery_b Realme_12_pro_plus_OrangeFox_Custom_Recovery.img
   ```
4. Reboot into OrangeFox Recovery:
   ```bash
   fastboot reboot recovery
   ```

> **Automated Script:** You can also run `./flash_recovery.sh` (Linux/macOS) or double-click `flash_recovery.bat` (Windows).

### Method 2: From Existing OrangeFox / TWRP Recovery

1. Copy `Realme_12_pro_plus_OrangeFox_Custom_Recovery.img` to your device's internal storage or USB OTG.
2. In OrangeFox, tap **Files** $\rightarrow$ switch filter to **Install Image**.
3. Select `Realme_12_pro_plus_OrangeFox_Custom_Recovery.img`.
4. Choose the **Recovery** partition and swipe to confirm flash.
5. Tap **Reboot** $\rightarrow$ **Recovery**.

---

## ⚠️ Notes & Disclaimer

- Ensure your bootloader is unlocked before attempting to flash custom recovery.
- Flashing custom software carries inherent risks. Always maintain a current backup of your essential data before flashing.
