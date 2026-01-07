# Installisasi Waydroid di Linux Fedora

### 1. Langkah Pertama
Nyalakan Laptop dan masuk ke menu booting

### 2. Langkah Kedua
Masuk ke operating sistem Linux Fedora, kemudian masuk ke menu terminal atau console

### 3. Langkah Ketiga
Install Perangkat Lunak Waydroid menggunakan Syntax berikut

```
sudo dnf install waydroid
```
fungsi syntax tersebut adalah untuk :
* sudo: Menjalankan perintah dengan hak akses super user (administrator), yang diperlukan untuk menginstal atau memodifikasi perangkat lunak sistem.
* dnf: Ini adalah manajer paket default untuk Fedora dan distribusi Linux berbasis RPM modern (singkatan dari Dandified Yum). Ini digunakan untuk mencari, menginstal, memperbarui, dan menghapus paket perangkat lunak.
* install: Ini adalah sub-perintah yang menginstruksikan dnf untuk melakukan tindakan instalasi paket.
* waydroid: Ini adalah nama paket perangkat lunak yang ingin Anda instal. Paket ini berisi semua file program, dependensi, dan konfigurasi dasar yang diperlukan untuk menjalankan Waydroid di sistem Anda.


### 4. Langkah Keempat
Kemudian Inisialisasi Waydroid yang telah di Install
```
sudo waydroid init -s GAPPS -c https://ota.waydro.id/system -v https://ota.waydro.id/vendor
```
* sudo: Menjalankan perintah dengan hak akses superuser (administrator), yang diperlukan untuk mengelola kontainer sistem dan file terkait Waydroid di /var/lib/waydroid.
* waydroid init: Ini adalah perintah utama untuk menyiapkan atau menginisialisasi lingkungan Waydroid. Jika Waydroid sudah diinisialisasi, perintah ini mungkin memberikan pesan kesalahan kecuali jika opsi penimpaan digunakan.
-s GAPPS atau --system_type=GAPPS: Opsi ini menentukan bahwa Anda ingin menggunakan citra sistem Android yang menyertakan Google Play Services dan aplikasi Google dasar (seperti Google Play Store). Alternatifnya adalah VANILLA yang tidak menyertakan layanan Google.
-c https://ota.waydro.id/system atau --system_channel=...: Opsi ini menentukan URL saluran OTA (Over-The-Air) tempat Waydroid akan mengunduh file citra sistem Android yang diperlukan.
-v https://ota.waydro.id/vendor atau --vendor_channel=...: Opsi ini menentukan URL saluran OTA tempat Waydroid akan mengunduh file citra vendor Android yang diperlukan.

### 5. Langkah Kelima
Setelah di Inisialisasi, langkah selanjutnya adalah mengaktifkan perangkat Waydroid menggunakan Syntax berikut
```
sudo systemctl enable waydroid-container
```
penjelasan rinci mengenai perintah tersebut adalah sebagai berikut:
* sudo: Perintah ini memberikan hak akses superuser (administrator) yang diperlukan untuk mengubah konfigurasi sistem yang penting.
* systemctl: Ini adalah alat baris perintah utama untuk mengontrol systemd, sistem dan manajer layanan (service manager) yang digunakan oleh sebagian besar distribusi Linux modern.
* enable: Opsi ini digunakan untuk membuat tautan simbolik (symbolic link) yang diperlukan dalam struktur direktori systemd sehingga layanan target (waydroid-container.service) akan diaktifkan saat boot.
* waydroid-container: Ini adalah nama dari unit layanan (service unit) systemd yang mengelola kontainer Android Waydroid.

### 6. Langkah keenam
Kemudian mulai sesi kontainer waydroid menggunakan syntax berikut:
```
sudo systemctl start waydroid-container
```
rincian dari syntax tersebut dan efeknya adalah sebagai berikut:
* sudo: Menjalankan perintah dengan hak akses superuser (administrator).
* systemctl: Utilitas baris perintah untuk mengontrol systemd, manajer sistem dan layanan di Linux.
* start: Sub-perintah ini menginstruksikan systemd untuk menjalankan layanan yang ditentukan sekarang juga.
* waydroid-container: Nama dari unit layanan (service unit) yang mengelola kontainer Android Waydroid. 

### 7. Langkah Ketujuh
Setelah dimulai sesi kontainer waydroid, silahkan cek status kontainer waydroid terlebih dahulu sebelum digunakan dengan menggunakan syntax berikut:
```
sudo systemctl status waydroid-container
```
rincian dari syntax tersebut adalah sebagai berikut:
* sudo: Menjalankan perintah dengan hak akses super user (administrator). Ini diperlukan karena systemctl mengelola layanan tingkat sistem yang memerlukan izin tinggi untuk diakses atau dimodifikasi.
* systemctl: Ini adalah utilitas baris perintah utama untuk berinteraksi dengan systemd, yaitu manajer sistem dan layanan inisialisasi yang digunakan oleh sebagian besar distribusi Linux modern. Ini adalah alat pusat untuk mengontrol siklus hidup layanan (mulai, berhenti, mengaktifkan, menonaktifkan, dll.).
* status: Ini adalah sub-perintah aksi yang menginstruksikan systemctl untuk mengambil dan menampilkan ringkasan ekstensif mengenai kondisi unit layanan yang ditargetkan saat ini.
* waydroid-container: Ini adalah nama unit layanan (service unit) yang spesifik yang menjadi target pemeriksaan. Layanan ini bertanggung jawab penuh untuk menjalankan dan mengelola lingkungan kontainerisasi Android di latar belakang sistem Linux Anda.

### 8. Langkah Kedelapan
Setelah dipastikan bahwa status kontainer waydroid sudah 'running', maka perangkat lunak waydroid sudah dapat digunakan, dan untuk memunculkan UI atau tampilan antar muka secara penuh, gunakan syntax berikut: 
```
waydroid show-full-ui
```
rincian dari syntax tersebut adalah sebagai berikut:
* waydroid: Ini adalah perintah utama untuk berinteraksi dengan aplikasi dan layanan Waydroid.
* show-full-ui: Ini adalah sub-perintah yang secara spesifik menginstruksikan Waydroid untuk menampilkan seluruh antarmuka Android, lengkap dengan layar beranda (homescreen), laci aplikasi (app drawer), dan navigasi sistem (seperti tombol kembali, beranda, dan aplikasi terbaru). 

### Maka Waydroid sudah Terinstall dan sudah dapat digunakan

<img src="/img/img1.png" alt="img1" width="340px" height="214px">

<img src="/img/img2.png" alt="img2" width="340px" height="214px">

Ini adalah bukti bahwa waydroid bisa menggunakan internet dan membuka browser