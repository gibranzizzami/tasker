# 1. Persiapan Sistem
## 1.1. Update Sistem
```
sudo apt update && sudo apt upgrade -y
```
## 1.2. Install Dependency Wajib
```
sudo apt install apache2 mariadb-server \
libapache2-mod-perl2 libxml2 libxml2-utils \
libssl-dev libexpat1-dev libdb-dev \
build-essential wget curl git -y
```
Jika butuh perlbrew:
```
sudo apt install perlbrew -y
```
## 1.3. Cek Status Database
```
sudo systemctl status mariadb
```
Jika belum diamankan:
```
sudo mysql_secure_installation
```
Pastikan MariaDB sudah aktif. 
<img width="768" height="394" alt="image" src="https://github.com/user-attachments/assets/ce8962e0-1cc5-4e1b-82f4-836bf3585614" />

## 1.4. Membuat Database E-Prints
Masuk ke MySQL:
```
sudo mysql
```
Jalankan:
```
CREATE DATABASE eprints CHARACTER SET utf8mb4;

CREATE USER 'eprints'@'localhost' IDENTIFIED BY 'password_aman_disini';

GRANT ALL PRIVILEGES ON eprints.* TO 'eprints'@'localhost';

FLUSH PRIVILEGES;
```
Keluar:
```exit;
```
# 2. Instalasi E-Prints
## 2.1. Buat User Sistem: E-Prints
```
sudo adduser eprints
sudo usermod -aG sudo eprints
```
Opsional agar user tidak minta password ketika menjalankan sudo:
```
sudo visudo
```
Tambahkan:
```
eprints ALL=(ALL) NOPASSWD:ALL
```
## 2.2 Download Source EPrints
Masuk ke folder sementara:
```
cd /tmp
```
Download versi stabil terbaru (contoh 3.4.6):
```
wget https://files.eprints.org/2554/2/eprints-3.4.6.tar.gz
```
Extract:
```
tar -xvzf eprints-3.4.6.tar.gz
cd eprints-3.4.6
```
## 2.3. Instalasi
Jalankan:
```
sudo perl install.pl
```
Ikuti wizard sampai selesai.
Path instalasi default: `/opt/eprints3`
Jika instalasi sukses, folder berikut akan muncul:
`
/opt/eprints3/bin/
/opt/eprints3/lib/
/opt/eprints3/archives/
`
## 2.4. Cek Instalasi
```
/opt/eprints3/bin/epadmin --version
```
<img width="1600" height="900" alt="image" src="https://github.com/user-attachments/assets/18276910-daec-4efe-9b68-c1917b38c474" />
