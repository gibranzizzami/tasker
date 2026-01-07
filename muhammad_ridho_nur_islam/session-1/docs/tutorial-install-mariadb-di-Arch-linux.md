# Tutorial Install MariaDB di Arch Linux

## Step 1: Masuk ke Arch linux
Buka Arch Linux di laptop yang sudah terinstal dengan OS Arch Linux

## Step 2: Buka Terminal
Lalu buka terminal yang berada di dalam OS arch linux

## Step 3: Install Paket MariaDB
Karna ini di Arch Linux gunakan command `sudo` untuk menjalankan sebuah perintah dengan hak akses sebagai superuser atau masuk mode root yang memiliki izin tertinggi dalam sistem Linux,`pacman -S` untuk instalasi di Arch Linux, dan `mariadb` untuk menginstal paket mariadb dari repositori

`sudo pacman -S mariadb`

<img src="/session-1/img/tutorial install mariadb/mariadb1.jpeg" alt="mariadb" width="340px" height="214px">

## Step 4: Inisialisasi Direktori Data
Setelah paket MariaDB terinstall, selanjutnya membuat direktori data untuk MariaDB dengan menggunakan command 

`mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql`

<img src="/session-1/img/tutorial install mariadb/mariadb2.jpeg" alt="mariadb" width="340px" height="214px">

## Step 5: Aktifkan dan mulai layanan MariaDB
Aktifkan layanan MariaDB agar bisa berjalan secara otomatis saat sistem *booting* menggunakan command
`systemctl enable mariadb.service` 

<img src="/session-1/img/tutorial install mariadb/mariadb3.jpeg" alt="mariadb" width="340px" height="214px">

dan segera memulai layanannya menggunakan command
`systemctl start mariadb.sevice`

## Step 6: Amankan Instalasi MariaDB
Jalankan skrip kemanana bawaan untuk mengamankan instalasi MariaDB. Skrip ini akan memabntu dalam:
1. Mengatur kata sandi `root`.
2. Menghapus pengguna anonim.
3. Menghapus basis data pengujian.
4. Membatasi akses `root` dari jarak jauh.
Command yang digunakan adalah:

`mysql_scure_installation`

<img src="/session-1/img/tutorial install mariadb/mariadb4.jpeg" alt="mariadb" width="340px" height="214px">

Baca lalu ikuti instruksi pada terminal untuk menyelesaikan peorses keamanan.
(ketika nanti diminta memasukkan kata sandi `root` saat ini, biarkan kosong dan dan tekan tombol `Enter` agar memastikan bahwa akses `root` ke database hanya bisa dilakukan secara lokal oleh pengguna `root` sistem.)

## Langkah 6: Verifikasi Instalasi 
Langkah terakhir adalah memeriksa statusnya untuk memastikan instalasi berhasil dan layanan berjalan, dengan menggunakan command
`systemctl status mariadb.service`

<img src="/session-1/img/tutorial install mariadb/mariadb5.jpeg" alt="mariadb" width="340px" height="214px">

## Langkag 7: Masuk ke Mariadb
Gunakan command
`mysql -u root`

