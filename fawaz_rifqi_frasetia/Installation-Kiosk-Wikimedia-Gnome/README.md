# Chromium Kiosk Mode - Arch Linux GNOME

Panduan lengkap instalasi dan konfigurasi Chromium dalam mode kiosk di Arch Linux dengan desktop environment GNOME.

## 📋 Daftar Isi

- [Deskripsi](#deskripsi)
- [Persyaratan Sistem](#persyaratan-sistem)
- [Instalasi](#instalasi)
- [Konfigurasi](#konfigurasi)
- [Penggunaan](#penggunaan)
- [Troubleshooting](#troubleshooting)
- [Uninstall](#uninstall)

## 🔍 Deskripsi

Kiosk mode adalah mode tampilan fullscreen yang membatasi akses pengguna hanya pada satu aplikasi atau website tertentu. Setup ini cocok untuk:

- Display informasi publik
- Digital signage
- Terminal informasi interaktif
- Presentasi permanen
- Dashboard monitoring

## 💻 Persyaratan Sistem

- Arch Linux dengan desktop GNOME
- Akses sudo/root
- Koneksi internet untuk instalasi paket

## 🚀 Instalasi

### 1. Install Paket yang Diperlukan

```bash
sudo pacman -S --needed chromium xorg-server xorg-xinit xorg-xset unclutter
```

**Penjelasan paket:**
- `chromium` - Web browser utama
- `xorg-server` - Server display X11
- `xorg-xinit` - Utilitas untuk start X server
- `xorg-xset` - Utilitas untuk setting display
- `unclutter` - Menyembunyikan cursor mouse saat idle

### 2. Buat User Khusus Kiosk

```bash
sudo useradd -m -s /bin/bash kiosk
sudo passwd kiosk
```

Masukkan password untuk user kiosk saat diminta.

### 3. Buat Script Kiosk

```bash
sudo nano /home/kiosk/start-kiosk.sh
```

Copy paste script berikut:

```bash
#!/bin/bash

# Disable screen blanking dan power management
xset -dpms
xset s off
xset s noblank

# Hide mouse cursor saat idle
unclutter -idle 0.1 -root &

# Start chromium dalam kiosk mode
chromium \
    --kiosk \
    --noerrdialogs \
    --disable-infobars \
    --no-first-run \
    --fast \
    --fast-start \
    --disable-features=TranslateUI \
    --disable-pinch \
    --overscroll-history-navigation=0 \
    --disable-session-crashed-bubble \
    "https://www.wikipedia.org"
```

**Catatan:** Ganti URL `https://www.wikipedia.org` dengan URL yang ingin ditampilkan.

Buat script executable:

```bash
sudo chmod +x /home/kiosk/start-kiosk.sh
sudo chown kiosk:kiosk /home/kiosk/start-kiosk.sh
```

### 4. Setup Autostart GNOME

Buat direktori autostart:

```bash
sudo mkdir -p /home/kiosk/.config/autostart
```

Buat file desktop entry:

```bash
sudo nano /home/kiosk/.config/autostart/kiosk.desktop
```

Copy paste konfigurasi berikut:

```ini
[Desktop Entry]
Type=Application
Name=Kiosk Mode
Exec=/home/kiosk/start-kiosk.sh
X-GNOME-Autostart-enabled=true
```

Set ownership yang benar:

```bash
sudo chown -R kiosk:kiosk /home/kiosk/.config
```

## ⚙️ Konfigurasi

### Auto-Login (Opsional)

Untuk membuat sistem otomatis login ke user kiosk saat boot:

```bash
sudo nano /etc/gdm/custom.conf
```

Tambahkan atau edit section `[daemon]`:

```ini
[daemon]
AutomaticLoginEnable=True
AutomaticLogin=kiosk
```

### Disable GNOME Keyboard Shortcuts (Opsional)

Untuk mencegah user keluar dari kiosk mode menggunakan keyboard:

```bash
sudo -u kiosk dbus-launch gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"
sudo -u kiosk dbus-launch gsettings set org.gnome.desktop.wm.keybindings switch-windows "[]"
sudo -u kiosk dbus-launch gsettings set org.gnome.desktop.wm.keybindings close "[]"
```


### Opsi Chromium Tambahan

Beberapa opsi chromium yang bisa ditambahkan:

```bash
--disable-translate          # Nonaktifkan notifikasi translate
--disable-sync               # Nonaktifkan sinkronisasi Chrome
--incognito                  # Mode incognito/private
--start-fullscreen           # Start fullscreen (alternative --kiosk)
--app="https://url.com"      # Mode aplikasi tanpa browser UI
```

## 🎯 Penggunaan

### Menjalankan Kiosk Mode

**Metode 1: Login Manual**

1. Logout dari user saat ini
2. Login menggunakan user `kiosk`
3. Chromium akan otomatis start dalam kiosk mode

**Metode 2: Auto-Login (jika sudah dikonfigurasi)**

```bash
sudo reboot
```

Sistem akan otomatis login ke user kiosk dan menjalankan kiosk mode.

### Keluar dari Kiosk Mode

**Opsi 1: Keyboard Shortcut**
```
Alt + F4
```

**Opsi 2: Terminal**
```
Ctrl + Alt + T
```
Kemudian jalankan:
```bash
pkill chromium
```

**Opsi 3: Kill Process (dari user lain)**
```bash
pkill -u kiosk chromium
```

### Restart Kiosk

Jika kiosk crash atau perlu restart:

```bash
sudo -u kiosk /home/kiosk/start-kiosk.sh
```

Atau dari user kiosk:

```bash
/home/kiosk/start-kiosk.sh
```

## 🔧 Troubleshooting

### Chromium Tidak Start

**Cek log error:**
```bash
sudo journalctl -u gdm -f
```

**Test script manual:**
```bash
su - kiosk
/home/kiosk/start-kiosk.sh
```

### Screen Blanking Masih Aktif

Pastikan xorg-xset terinstall dan jalankan manual:

```bash
xset -dpms
xset s off
xset s noblank
```

### Auto-login Tidak Bekerja

Cek konfigurasi GDM:

```bash
cat /etc/gdm/custom.conf
```

Pastikan formatnya benar dan user kiosk ada:

```bash
id kiosk
```

### Chromium Crash Terus

Hapus cache chromium:

```bash
sudo rm -rf /home/kiosk/.config/chromium
sudo rm -rf /home/kiosk/.cache/chromium
```

### Cursor Mouse Masih Terlihat

Pastikan unclutter berjalan:

```bash
ps aux | grep unclutter
```

Jika tidak ada, install ulang:

```bash
sudo pacman -S unclutter
```

### Permission Denied

Set ulang ownership:

```bash
sudo chown -R kiosk:kiosk /home/kiosk
sudo chmod +x /home/kiosk/start-kiosk.sh
```

## 🗑️ Uninstall

### Hapus Auto-Login

Edit `/etc/gdm/custom.conf`:

```bash
sudo nano /etc/gdm/custom.conf
```

Hapus atau comment baris:

```ini
#AutomaticLoginEnable=True
#AutomaticLogin=kiosk
```

### Hapus User Kiosk

```bash
sudo userdel -r kiosk
```

### Uninstall Paket (Opsional)

```bash
sudo pacman -Rs chromium unclutter
```

**Catatan:** Jangan uninstall xorg-server jika masih digunakan sistem.

## 📝 Catatan Tambahan

### Keamanan

- User kiosk memiliki akses terbatas
- Sebaiknya disable sudo untuk user kiosk
- Gunakan password yang kuat

### Network

Pastikan koneksi internet stabil untuk menampilkan konten web.

### Update

Untuk update chromium:

```bash
sudo pacman -Syu
```

### Backup Konfigurasi

Backup file penting:

```bash
sudo cp /home/kiosk/start-kiosk.sh ~/start-kiosk.sh.backup
sudo cp /home/kiosk/.config/autostart/kiosk.desktop ~/kiosk.desktop.backup
```

## 📄 Lisensi

Script ini bebas digunakan dan dimodifikasi sesuai kebutuhan.

## 🤝 Kontribusi

Kontribusi, saran, dan perbaikan sangat diterima!

## 📧 Kontak

Jika ada pertanyaan atau masalah, silakan buat issue di repository ini.

---

**Dibuat untuk Arch Linux dengan ❤️**
