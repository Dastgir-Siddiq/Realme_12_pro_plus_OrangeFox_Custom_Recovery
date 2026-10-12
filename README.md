# OrangeFox Recovery Project R12.1 — realme 12 Pro+ 5G (ferrarri)

Official OrangeFox Recovery Project R12.1 build customized and maintained for the **realme 12 Pro+ 5G** (codename: `ferrarri`).

---

## 📌 Build Details

- **Device:** realme 12 Pro+ 5G
- **Codename:** `ferrarri`
- **Recovery Version:** OrangeFox R12.1 (AOSP-eng)
- **Status:** Stable / Hardware Verified
- **Developer & Maintainer:** **Dastgir Siddiq** ([@Dastgir-Siddiq](https://github.com/Dastgir-Siddiq))

---

## 🚀 Key Features & Enhancements

- **Dynamic Partitions Image Flashing:**
  Added direct `.img` flashing support from the recovery GUI for all dynamic logical partitions:
  - **System** (`/system_image`)
  - **System Ext** (`/system_ext_image`)
  - **Product** (`/product_image`)
  - **Vendor** (`/vendor_image`)
  - **ODM** (`/odm_image`)
  - **Vendor DLKM** (`/vendor_dlkm_image`)
  - **ODM DLKM** (`/odm_dlkm_image`)
- **Core Partitions Flashing Support:**
  - Boot (`/boot`)
  - Vendor Boot (`/vendor_boot`)
  - Recovery (`/recovery`)
  - DTBO (`/dtbo`)
  - VBMeta & VBMeta System (`/vbmeta`, `/vbmeta_system`)
  - Persist (`/persist_image`)
- **Android Verified Boot (AVB 2.0):**
  - Fully signed and appended with standard AVB 2.0 `AVBf` footer (`SHA256_RSA4096`).
  - Seamless dual-slot (`slot_a` / `slot_b`) support.
- **Maintainer Branding:**
  - Updated system properties and metadata with **Dastgir Siddiq** as developer and maintainer.
  - Removed outdated third-party maintainer details and fixed binary splash strings without breaking XML/GUI parser tables.
- **Hardware Verified:**
  - Tested on live realme 12 Pro+ 5G hardware.

---

## 📦 File Information & Checksums

| File | Size | SHA-256 Checksum |
| :--- | :--- | :--- |
| `OrangeFox-R12.1_AOSP-eng-STABLE-ferrarri.img` | 104,857,600 bytes (100 MB) | `397d7e95ff4046ad945edd2b38d0e4144ab7797be54b666071bd3fab3a1f4ccb` |

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
   fastboot flash recovery_a OrangeFox-R12.1_AOSP-eng-STABLE-ferrarri.img
   fastboot flash recovery_b OrangeFox-R12.1_AOSP-eng-STABLE-ferrarri.img
   ```
4. Reboot into OrangeFox Recovery:
   ```bash
   fastboot reboot recovery
   ```

> **Automated Script:** You can also run `./flash_recovery.sh` (Linux/macOS) or double-click `flash_recovery.bat` (Windows).

### Method 2: From Existing OrangeFox / TWRP Recovery

1. Copy `OrangeFox-R12.1_AOSP-eng-STABLE-ferrarri.img` to your device's internal storage or USB OTG.
2. In OrangeFox, tap **Files** $\rightarrow$ switch filter to **Install Image**.
3. Select `OrangeFox-R12.1_AOSP-eng-STABLE-ferrarri.img`.
4. Choose the **Recovery** partition and swipe to confirm flash.
5. Tap **Reboot** $\rightarrow$ **Recovery**.

---

## ⚠️ Notes & Disclaimer

- Ensure your bootloader is unlocked before attempting to flash custom recovery.
- Flashing custom software carries inherent risks. Always maintain a current backup of your essential data before flashing.

---

## 👨‍💻 Maintainer & Credits

- **Maintainer:** [Dastgir Siddiq](https://github.com/Dastgir-Siddiq)
- **OrangeFox Recovery Project:** [OrangeFox Recovery Team](https://gitlab.com/OrangeFox)
