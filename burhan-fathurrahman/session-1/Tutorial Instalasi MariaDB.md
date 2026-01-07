#### Langkah-langkah Instalasi MariaDB

Buka **Browser** yang biasa Anda gunakan seperti **Mozilla Firefox, Google Chrome atau Microsoft Edge**

Lalu cari dengan kata kunci "install mariadb for debian" lalu akan muncul langkah-langkah dari Ringkasan AI dengan tampilan sepert ini

Masukkan kode-kode di bawah secara berurutan 
```
sudo apt update
```
```
sudo apt upgrade
```
Lalu masukkan password anda
```
sudo apt install mariadb-server
```
Setelah memasukkan kode di atas. akan muncul tulisan "Continue? [Y/n] " maka ketik dengan "Y"

Lalu cek status MariaDB dengan menggunakan kode "systemctl status mariadb" tidak perlu untuk menggunakan kutip dua. jika sudah terdapat tulisan "enabled" dan "active (running), maka MariaDB sudah bisa digunakan

<img width="936" height="343" alt="Step_MariaDB_4" src="https://github.com/user-attachments/assets/aee562dd-1563-487f-8509-0e11c6595dcc" />

