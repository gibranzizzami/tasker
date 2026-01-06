# install_moodle_arc

Dokumen ini menjelaskan langkah-langkah instalasi Moodle pada sistem operasi Arch Linux menggunakan Apache, PHP, dan MariaDB.

## Kebutuhan Sistem
- Arch Linux
- Akses sudo
- Koneksi internet

## Step 1: Update Sistem
```bash
sudo pacman -Syu
```
## Step 2: Install Apache Web Server
```bash
sudo pacman -S apache
sudo systemctl start httpd
sudo systemctl enable httpd
````
lalu cek di google 
http://localhost

## Step 3: Install PHP dan Ekstensi yang Dibutuhkan Moodle
```bash
sudo pacman -S php php-apache php-gd php-intl php-xml php-zip php-mbstring php-curl php-soap
```
lalu kalian harus mengedit konfigurasi Apache:
```bash
sudo nano /etc/httpd/conf/httpd.conf
```
###Pastikan baris berikut aktif:

LoadModule php_module modules/libphp.so
AddHandler php-script .php
Include conf/extra/php_module.conf


lalu restart apche kalian 
```
sudo systemctl restart httpd
```
##Step 4: Install Marisadb
setelah itu kalian perlu nginsatall mariad untuk menyimpan data base
```
sudo pacman -S mariadb
```
Step 4: Install MariaDB
sudo pacman -S mariadb


Inisialisasi database:
```
sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
```

Jalankan MariaDB:
```
sudo systemctl start mariadb
sudo systemctl enable mariadb
```

Amankan database:
```
sudo mysql_secure_installation
```
## Step 5: Membuat Database untuk Moodle
```
sudo mysql -u root -p
```
CREATE DATABASE moodle DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER 'moodleuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON moodle.* TO 'moodleuser'@'localhost';
FLUSH PRIVILEGES;
EXIT;

## Step 6: Download Moodle
```
cd /srv/http
sudo pacman -S git
sudo git clone https://github.com/moodle/moodle.git
```
Atur permission:
```
sudo chown -R http:http moodle
sudo chmod -R 755 moodle
```
## Step 7: Membuat Folder Data Moodle
```
sudo mkdir /srv/moodledata
sudo chown -R http:http /srv/moodledata
sudo chmod -R 770 /srv/moodledata
```
## Step 8: Konfigurasi PHP

Edit file konfigurasi:
```
sudo nano /etc/php/php.ini
```
Ubah nilai berikut:

memory_limit = 256M
upload_max_filesize = 50M
post_max_size = 50M
max_input_vars = 5000

lalu Restart Apache:
```
sudo systemctl restart httpd
```
## Step 9: Instalasi Moodle Melalui Browser

Buka browser dan akses:

http://localhost/moodle

Ikuti proses instalasi sampai selesai. yang ada di web tersebut

Catatan

Karena Arch Linux menggunakan sistem rolling release, versi PHP yang tersedia bisa lebih baru dari versi yang direkomendasikan Moodle. Hal ini dapat menyebabkan error kompatibilitas.

Penutup

Instalasi Moodle di Arch Linux memerlukan konfigurasi manual, namun dapat berjalan dengan baik apabila semua dependensi telah terpenuhi.

