# Cara Mengunduh MariaDB di LInux MInt

Berikut adalah cara bagaimana mengunduh MariaDB di Linux Mint:

1. Buka Terminal 
2. Buka Firefox browser
3. Ketik "MariaDB doc" di searchbar dan klik cari
4. Buka laman [dokumentasi MariaDB](https://mariadb.com/docs)
5. Pilih **Installation Guide**
6. Ikuti cara yang tertera sesuai dengan operating system yang digunakan. Saya menggunakan opsi **For Linux**
![Tampilan halaman MariaDB](https://github.com/zihannrae/tasker/blob/a116b6a1fe894d8a161fe3428eb82e982a1e0ee1/12402051030056_zihan_nuraeni/tugas/session-1/img/install%20mariadb.png)
7. Update Package List dengan mengetik `sudo apt update` di terminal
8. Install MariaDB server sesuai versi LInux yang digunakan. Untuk Linux Mint `sudo apt install mariadb-server mariadb-client`
9. Amankan instalasi dengan `sudo mariadb-secure-installation` tetapkan password, hilangkan user anonim, dan disable remote root login.
10. Mulai dan verifikasi layanan. `sudo systemctl status mariadb` untuk mengecek status, `sudo systemctl start mariadb` untuk memulai layanan, `mariadb -u root -p` untuk verifikasi instalasi dengan menghubungkan sebagai root:Bash. 
