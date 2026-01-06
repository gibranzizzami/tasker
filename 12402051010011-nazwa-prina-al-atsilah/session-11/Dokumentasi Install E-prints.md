Dokumentasi Instalasi EPrints di Linux Mint

Dokumentasi ini menjelaskan proses instalasi EPrints pada sistem operasi Linux Mint, dimulai dari persiapan, pemasangan, konfigurasi server, hingga tahap pengujian fungsi dasar repository. Dokumentasi ini berisi rangkaian proses yang sudah dilakukan dengan bukti screenshot yang tersedia.

Berikut langkah-langkah menginstall E-prints
1. Persiapan Database MariaDB

Langkah pertama yang dilakukan adalah membuat database dan user untuk EPrints.
sudo mysql -u root -p

Setelah masuk ke MariaDB, dibuat database baru:
CREATE DATABASE myrepo2 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

Lalu membuat user baru dan memberikan hak akses:
CREATE USER 'myrepo2_user'@'localhost' IDENTIFIED BY 'password123';
GRANT ALL PRIVILEGES ON myrepo2.* TO 'myrepo2_user'@'localhost';
FLUSH PRIVILEGES;

Dan MariaDB pun menunjukkan Query OK, yang menandakan bahwa langkah awal ini berhasil

<img src="/img/tutorial e-prints/pic 1.jpeg" alt="pic" width="300px" height="150px">

2. Membuat Repository Zero di EPrints

Setelah database siap, repo kosong dibuat menggunakan perintah:
sudo -u eprints /opt/eprints3/bin/epadmin create zero
EPrints menampilkan daftar repo yang sudah ada, kemudian diminta memasukkan ID repo baru. Pada tahap ini ID repo yang dibuat adalah:
Archive ID? myrepo2
EPrints langsung membuat struktur folder awal:
/opt/eprints3/archives/myrepo2/cfg/
/opt/eprints3/archives/myrepo2/cfg/lang/
/opt/eprints3/archives/myrepo2/html/
/opt/eprints3/archives/myrepo2/cgi/

Semua file seperti metadata.xml, namerules, citations, dll otomatis dibuat.

<img src="/img/tutorial e-prints/pic 2.jpeg" alt="pic" width="300">

3. Menghapus dan Membuat Repo Baru (Jika Diperlukan)

Pada screenshot kedua terlihat bahwa repo lama dihapus dulu:
DROP DATABASE IF EXISTS myrepo2;
DROP USER IF EXISTS 'myrepo2_user'@'localhost';

Kemudian membuat repo baru lagi dengan ID berbeda:
sudo -u eprints perl /opt/eprints3/bin/epadmin create zero

Repo baru dengan ID:
Archive ID? repo1

Struktur folder repo1 dibuat otomatis oleh EPrints.

4. Konfigurasi Dasar Repository

Setelah folder awal dibuat, EPrints meminta input konfigurasi:

Hostname:
Hostname? repo1.localdomain

Port
Default 80 digunakan:
Webserver Port [80] ?

Alias URL
Pada bagian alias, daftar hostname alternatif bisa dimasukkan. Jika tidak ada, tekan #.
Path URL
Path [/] ?

Admin Email
Administrator Email? nazwaprina@gmail.com

Nama Repository
Archive Name [Test Repository]? Repo Eprints

Nama Organisasi
Organisation Name [Organisation of Test]? 

<img src="/img/tutorial e-prints/pic 3.jpeg" alt="pic" width="300">

5. Konfigurasi Database di EPrints

Di tahap ini, data database untuk repo1 diisi:

Database Name [repo1] ?
MySQL Host [localhost] ?
Database Password [xxxxxx]
Database User [repo1] ?
Database Engine [InnoDB] ?

Setelah itu ditulis ke file:
/opt/eprints3/archives/repo1/cfg/cfg.d/database.pl

Membuat database melalui EPrints
Create database "repo1" [yes] ?
Create database tables? [yes] ?

Semua proses create DB dan table selesai tanpa error.

<img src="/img/tutorial e-prints/pic 4.jpeg" alt="pic" width="300">

6. Membuat User Admin EPrints

EPrints meminta membuat user admin pertama:
Create a new user? [yes]
Enter a username (id)? admin
Enter user type [user|editor|admin]? admin
Email? nazwaprina@gmail.com

User berhasil dibuat:
ID: 1
<img src="/img/tutorial e-prints/pic 5.jpeg" alt="pic" width="300">

7. Build Static Webpages

Setelah itu halaman statis dibuild:
Do you want to build the static web pages? [yes]

Seluruh file HTML, help pages, dan static assets diproses oleh EPrints.

<img src="/img/tutorial e-prints/pic 6.jpeg" alt="pic" width="300">

8. Generate Apache Config

Repo menghasilkan file konfigurasi Apache otomatis:
apache_ssl.conf
perl_module_isolation.conf
repo1_vhost.conf
repo1.conf
myrepo2.conf (jika masih ada)
Intruksi muncul seperti ini:
Include /opt/eprints3/cfg/apache.conf
You must restart apache for any changes to take effect!
 
<img src="/img/tutorial e-prints/pic 7.jpeg" alt="pic" width="300">

9. Menambahkan Konfigurasi Apache

Saat mencoba:
Include /opt/eprints3/cfg/apache.conf

Muncul:
bash: /opt/eprints3/archives/! : Permission denied
bash: Include: command not found

Ini normal, karena perintah Include harus ditambahkan ke file Apache:
/etc/apache2/apache2.conf

Bukan dijalankan langsung di terminal.
Konfigurasi Apache untuk EPrints diaktifkan dengan membuat symlink dan memuat pengaturan:
sudo ln -s /opt/eprints3/apache2/conf.d/eprints.conf /etc/apache2/conf-available/eprints.conf
sudo a2enconf eprints
sudo systemctl restart apache2

Restart Apache tidak menampilkan pesan error, menandakan konfigurasi sudah terbaca dengan baik.

<img src="/img/tutorial e-prints/pic 8.jpeg" alt="pic" width="300">

<img src="/img/tutorial e-prints/pic 9.jpeg" alt="pic" width="300">

<img src="/img/tutorial e-prints/pic 10.jpeg" alt="pic" width="300">

10.  Pembuatan Repository Baru

Tahap berikutnya adalah membuat repository pertama menggunakan perintah bawaan EPrints:
sudo su - eprintsbin/epadmin create

Beberapa input diminta, antara lain nama repository, hostname, nama database, dan bahasa antarmuka.

Error yang muncul pada tahap ini:
1.  Error modul Perl yang belum terpasang, seperti:
XML::LibXML
XML::LibXSLT
Solusi: memasang modul yang hilang
sudo apt install libxml-libxml-perl libxml-libxslt-perl

2. Error permission pada direktori var atau archives, biasanya berbentuk “Permission denied”.
Solusi: memastikan kembali hak akses:
sudo chown -R eprints:eprints /opt/eprints3

3. Error database tidak ditemukan saat epadmin mencoba membuat tabel.
Solusi: membuat database secara manual:
CREATE DATABASE eprints;
GRANT ALL PRIVILEGES ON eprints.* TO 'eprints'@'localhost' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;

Setelah ketiga kendala di atas diperbaiki, proses epadmin dapat dilanjutkan sampai selesai. 
<img src="/img/tutorial e-prints/pic 11.jpeg" alt="pic" width="300">

11. Generate Static Pages

Setelah repository dibuat, sistem perlu menghasilkan halaman statis:
bin/generate_static nama_repo
<img src="/img/tutorial e-prints/pic 11.jpeg" alt="pic" width="300">

12. Pemeriksaan Struktur Folder

Direktori instalasi dicek untuk memastikan semua komponen terbentuk, seperti:
/opt/eprints3/archives/
/opt/eprints3/bin/
/opt/eprints3/var/
<img src="/img/tutorial e-prints/pic 11.jpeg" alt="pic" width="300">

13. Pengujian Melalui Browser

Repository diuji melalui browser dengan mengakses:
http://localhost/
http://localhost/cgi/users/home

<img src="/img/tutorial e-prints/pengujian di browser 1.jpeg" alt="pic" width="300">

<img src="/img/tutorial e-prints/pengujian 2.jpeg" alt="pic" width="300">
