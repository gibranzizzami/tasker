Data adalah representasi fakta, angka, atau simbol yang disimpan dalam bentuk tertentu sehingga dapat diproses menjadi informasi (Silberschatz, Korth, & Sudarshan, 2020). Data sangat penting untuk memudahkan organisasi melakukan pencatatan dan analisis dalam jumlah banyak. Dalam konteks perpustakaan, memanfaat data secara optimal sangat penting untuk menyimpan data berupa judul buku, nama penulis, atau tahun terbit yang digunakan untuk mencari informasi tentang buku. Selain itu, penggunaan data juga bermanfaat untuk mengetahui pola minat pembaca dan tren peminjaman. 

Primary Key : Pengenal unik di setiap baris dalam tabel. 

Tipe Data Angka (Numeric) : Mencakup INT (hanya bisa menggunakan angka), BIGINT, dan DECIMAL. INT digunakan untuk angka bulat, sementara DECIMAL untuk angka dengan koma. 

Tipe Data Tanggal dan Waktu : Tipe data tanggal menyimpan informasi waktu dalam format khusus. MariaDB menyediakan tipe DATE, TIME, DATETIME, dan TIMESTAMP. DATE menyimpan tanggal, TIME menyimpan jam, dan DATETIME menyimpan keduanya. Misalnya, tanggal peminjaman buku dapat dicatat dalam kolom DATE. Dengan format ini, sistem dapat mengolah data kronologis.

Konsekuensi Kesalahan Tipe Data

Kesalahan juga berdampak pada integrasi sistem. Data yang salah tipe sulit dihubungkan dengan aplikasi lain. Perpustakaan yang ingin berbagi data dengan sistem akademik akan menghadapi masalah. Oleh karena itu, pemilihan tipe data adalah keputusan strategis. Konsistensi sangat penting untuk interoperabilitas.

Perintah Dasar Database

CREATE DATABASE : Perintah ini membuat database kosong yang belum memiliki tabel, tetapi sudah siap untuk menampung data. Contohnya CREATE DATABASE Perpustakaan;

Use : Perintah untuk menjalankan database yang dipilih. Contohnya Use Perpustakaan;

Opsti Tambahan : 

CREATE DATABASE Perpustakaan (Membuat database bernama Perpustakaan)
DEFAULT CHARACTER SET utf8mb4 (Membuat database bisa menggunakan aksara atau bahasa lain)
COLLATE utf8mb4_general_ci;

CREATE TABLE : Membuat table yang akan digunakan. Contohnya CREATE TABLE Buku;

SHOW DATABASES; Menampilkan daftar database yang telah dibuat. 

SELECT DATABASE; : Memastikan menggunakan database yang ingin digunakan setelah menggunakan prompt USE; 

INSERT INTO : Menambahkan data ke tabel. Contohnya INSERT INTO buku (judul, penulis, tahun_terbit, isbn) VALUES
('Algoritma dan Struktur Data', 'Joko Santoso', 2019, '9786024456789');

DESCRIBE : membantu mencegah salah penulisan nama kolom. Praktik sederhana ini meningkatkan keakuratan query. Contohnya DESCRIBE Buku;

LIMIT : Jika tabel berisi banyak baris, hasil query bisa sangat panjang. Gunakan klausa LIMIT untuk membatasi jumlah data yang ditampilkan. Praktik ini membuat hasil lebih mudah dibaca. Contoh SELECT * FROM Buku LIMIT 5; 

UPDATE : digunakan untuk memperbarui nilai pada satu atau lebih kolom dalam tabel. Contohnya UPDATE buku SET judul = 'Algoritma Terapan', tahun_terbit = 2020 WHERE id_buku = 1; 
