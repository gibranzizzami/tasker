# Review Modul Ajar
- Judul Modul: MariaDB-Basic
- Pembuat: Yuros Community
- Mata Kuliah: Teknologi Basis Data dan Jaringan
- Session yang di review: 3

## Pertemuan 3

Pada modul pertemuan 3 meliputi: konsep database dan tabel, tipe data sederhana, membuat database baru, membuat tabel sederhana, praktik membuat tabel baru. jika ku simpulkan pada session 3 ini membahas tentang pengenalan dasar database dan penerapannya menggunakan DBMS (MariaDB)

## Modul 1: Definisi Database

Dalam modul 1 ini ada beberapa sub bab yang dibahas yaitu: **dfinisi database, pengertian tabel, baris sebagai record data, kolom sebagai atribut data, relasi antar tabel, peran primary key, kolaborasi database(tabel, baris dan kolom)**. Menurut pembahasan yang ada di modul ini database adalah wadah utama yang menyimpan data, sedangkan tabel menyusun data dalam bentuk terstruktur. Relasi antar tabel serta penggunaan primary key dapat memperkuat integritas sistem. Baris jugu  merepresentasikan entitas sedangkan kolom menjelaskan atribut apa yang dimiliki.

## Modul 2: Tipe Data Sederhana

Pada modul 2 ini ada beberapa sub bab yang dibahas yaitu: **definisi tipe data, tipe data angka(numeric),tipe data teks(string), tipe data tanggal dan waktu, pentingnya pemilihan tipe data, konsekuensi keslahan tipe data hingga studi kasus perpustakaan**. Menurut pembahasan yang ada di modul ini terdapat tiga tipe data yaitu numeric, string dan tanggal serta waktu. Dalam MariaDB, tipe angka sederhana mencakup INT, BIGINT, dan DECIMAL. INT digunakan untuk angka bulat, sementara DECIMAL untuk angka dengan koma, sedangkan BIGINT untuk angka besar. Dalam MariaDB, tipe teks umum adalah CHAR dan VARCHAR. CHAR digunakan untuk data dengan panjang tetap, sedangkan VARCHAR untuk panjang bervariasi. Dan untuk Tipe data tanggal menyimpan informasi waktu dalam format khusus. MariaDB menyediakan tipe DATE, TIME, DATETIME, dan TIMESTAMP. DATE menyimpan tanggal, TIME menyimpan jam, dan DATETIME menyimpan keduanya. Kesalahan dalam pemilihan bisa merusak analisis, membuat bingung sistem dan menghambat integrasi.

## Modul 3: Membuat Database Baru

Dalam modul 3 ini ada beberapa sub bab yang dibahas yaitu: **persiapan, perintah dasar (`CREATE DATABASE`), opsei tambahan pada `CREATE DATABASE`, verifikasi database yang dibuat, kesalahan umum, best practice, hingga studi kasus perpustakaan**. Menurut pembahasan yang ada di modul ini `mysql -u root -p` adalah command untuk masuk kedalam MariaDB, `CREATE DATABASE "nama database yang akan dibuat";` command untuk membuat database, `USE "nama database"` untuk masuk kedalam database, `CREATE DATABASE "nama database yang akan dibuat" DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;` command yang digunakan ketika data yang akan di masukkan menggunakan bahasa dengan huruf yang aneh-aneh, `SHOW DATABASE;` digunakan untuk menampilkan database yang dimiliki, `SELECT DATABASE ()` untuk memverifikasi database. 

## Modul 4: Membuat Tabel Sederhana

Dalam modul 4 ini ada beberapa sub bab yang dibahas yaitu: **persiapan database, perintah dasar `CREATE TABLE`, membuat tabel anggota, membuat tabel buku, kesalahan umum, best practice, studi kasus perpustakaan**. Modul ini membimbing para pelajar untuk membuat tabel sederhana dengan menggunakan command `CREATE TABLE` dari mulai membuat tabel anggota sampai studi kasus perpustakaan.

## Modul 5: Praktik Membuat Tabel Buku

Dalam modul 5 ini ada beberapa sub bab yang dibahas yaitu: **perispan awal, membuat tabel buku, menambahkan data buku pertama, hingga studi kasus perpustakaan**. Modul ini membimbing para pelajar untuk membuat tabel pertama dalam database, dari langkah awal hingga akhir di jelaskan secara sistematis.

## Kelebihan dan Kekurangan

Menurut saya modul ini sudah bagus bahkan ada best practice dan juga kesalahan umum yang membuat pelajar jadi lebih berhati hati dalam menggunakan MariaDB.