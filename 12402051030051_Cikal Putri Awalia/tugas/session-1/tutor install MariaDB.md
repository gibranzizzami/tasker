1. Langkah 1: Perbarui Indeks Paket
   Buka terminal dan masukkan kode sudo apt update
2. Langkah 2: Instal MariaDB Server
   Tambahkan kode ini sudo apt install mariadb-server mariadb-client dan
   ketika installasi sedang dalam proses berjalan, akan muncul pertanyaan konfirmasi. klik Y dan enter
3. Setelah instalasi selesai, kita perlu mengamankan server database. MariaDB menyediakan skrip bawaan untuk tujuan ini. Skrip ini akan membantu melakukan hal-hal penting seperti:
    Menetapkan kata sandi untuk pengguna root MariaDB.
    Menghapus pengguna anonim yang bisa menjadi celah keamanan.
    Mencegah login root dari jarak jauh (remote).
    Menghapus database uji (test database) yang tidak diperlukan.
    Masukkan skrip ini agar berjalan sudo mysql_secure_installation
    Kita perlu menambahkan kata sandi, tetapi karena ini installasi pertama maka di enter saja. Kemudian tetap ikuti petunjuk ynag muncul sambil terus menjawab Y (yess)
4. Langkah 4: Verifikasi Status MariaDB
   Setelah semua rangkaian selesai, alangkah baiknya kita memerikasa apakah layanan MariaDB sudah berjalan dengan optimal. Kita dapat memasukkan kode ini sudo systemctl status mariadb.
   Jika semuanya berhasil, kita akan melihat pesan yang menunjukkan status active (running). Ini berarti MariaDB sudah terinstal dan siap digunakan.
