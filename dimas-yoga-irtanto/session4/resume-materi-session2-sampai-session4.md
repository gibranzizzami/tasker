**Database**:

kumpulan data-data

**DBMS**:

  perangkat lunak yang digunakan untuk membuat, mengelola, dan mengakses basis data secara terstruktur.

**Tipe Data Angka (String)**:

  Tipe data angka digunakan untuk menyimpan bilangan bulat maupun desimal. Dalam MariaDB, tipe angka sederhana mencakup INT, BIGINT, dan DECIMAL. INT digunakan untuk angka bulat, sementara DECIMAL untuk angka dengan koma. Misalnya, jumlah eksemplar buku dapat disimpan dengan INT. Dengan cara ini, informasi numerik tersimpan rapi.

**Tipe Data Teks (String)**:

  Tipe data teks digunakan untuk menyimpan karakter, kata, atau kalimat. Dalam MariaDB, tipe teks umum adalah CHAR dan VARCHAR. CHAR digunakan untuk data dengan panjang tetap, sedangkan VARCHAR untuk panjang bervariasi. Misalnya, nama anggota lebih cocok menggunakan VARCHAR(100). Dengan tipe ini, teks disimpan secara fleksibel.
 
**Tabel**: 
  Tabel adalah struktur dasar dalam database relasional. Data disimpan dalam bentuk baris dan kolom dengan aturan tertentu.

**Primary key**: 

  adalah pengenal unik untuk setiap baris dalam tabel. Tanpa primary key, data bisa duplikat dan sulit dibedakan. Misalnya, dua anggota dengan nama sama dapat dibedakan melalui ID unik.

**INT**: 
  integral (angka) jadi hanya bisa di isi oleh angka

**VARCHAR**: variabel character jadi bisa di isi oleh kombinasi antara angka dan huruf

**auto_increment**: 
  fitur database yang secara otomatis menghasilkan nilai unik (biasanya berupa angka) untuk sebuah kolom setiap kali baris baru ditambahkan

**CREATE DATABASE perpustakaan; :** 

  Dengan perintah ini, MariaDB akan membuat database kosong bernama perpustakaan
  

**USE peerpustakaan; :** 

  Perintah ini  memberitahu MariaDB bahwa semua instruksi berikutnya akan dijalankan di database perpustakaan.

**CREATE DATABASE perpus
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci; :** 

  Dengan tambahan ini, semua teks dalam database akan menggunakan pengkodean UTF-8. Anda tidak akan kesulitan menyimpan judul buku berbahasa Jepang atau Arab.

**SHOW DATABASES; :** Perintah ini akan menampilkan daftar semua database dalam server MariaDB. 

**SELECT DATABASE(); :** Jika hasilnya adalah perpustakaan maka anda bekerja di database yang benar (sesuai dengan use)

**CREATE TABLE buku (
    id_buku INT PRIMARY KEY AUTO_INCREMENT,
    judul VARCHAR(150) NOT NULL,
    penulis VARCHAR(100),
    tahun_terbit YEAR,
    isbn VARCHAR(20) UNIQUE
); :** 

  Dengan perintah ini, sistem membuat tabel kosong bernama buku. Tabel sudah siap menampung data baru. 

**INSERT INTO buku (judul, penulis, tahun_terbit, isbn) VALUES
('Dasar-Dasar Basis Data', 'Ani Rahmawati', 2020, '9786021112223')INSERT INTO buku (judul, penulis, tahun_terbit, isbn) VALUES
('Dasar-Dasar Basis Data', 'Ani Rahmawati', 2020, '9786021112223'); :**

  Perintah ini menambahkan baris data ke tabel buku. Setiap entri memiliki judul, penulis, tahun terbit, dan ISBN. Dengan format ini, tabel siap menampung lebih banyak data.

  **SELECT * FROM buku; :** Perintah ini menampilkan daftar lengkap koleksi buku beserta detailnya.

**SELECT judul, penulis FROM buku; :** Dengan query ini, hasil tampilan akan lebih ringkas dan mudah dibaca.

**UPDATE buku SET penulis = 'Joko Purnomo' WHERE id_buku = 1; :**

  Perintah di atas akan mengubah kolom penulis hanya untuk baris dengan id_buku = 1. 

**UPDATE buku SET penulis = 'Anonim' WHERE tahun_terbit < 2000; :**

  Perintah di atas akan mengubah semua baris yang memenuhi kondisi tersebut.

**DELETE FROM buku WHERE id_buku = 5; :** 

  Query di atas akan menghapus hanya baris dengan id_buku bernilai 5. Baris lain tidak terpengaruh.


  


  

  





  
