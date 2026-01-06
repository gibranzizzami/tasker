# Pemanfaatan AI untuk Normalisasi database 

## Pendahuluan
Normalisasi basis data adalah proses penting untuk merancang struktur basis data yang efisien, mengurangi redundansi, dan meningkatkan integritas data.

Dalam era Big Data, di mana volume dan kompleksitas data terus meningkat, peran Kecerdasan Buatan (AI) mulai dipertimbangkan untuk mengotomatisasi dan mempercepat proses normalisasi. 

#### Pembuatan Awal database
```
CREATE TABLE ZIL Library (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama_anggota VARCHAR(200),
  alamat_anggota TEXT,
  no_hp VARCHAR(50),
  judul_buku VARCHAR(255),
  penulis VARCHAR(200),
  penerbit VARCHAR(200),
  tahun_terbit YEAR,
  tgl_pinjam DATE,
  tgl_kembali DATE
);
```
## Permasalahan
pada Pembuatan Awal database dengan tanpa adanya Normalisasi. Maka akan banyak masalah yang timbul, diantaranya :

1. Data anggota berulang tiap peminjaman.
2. Data buku berulang tiap dipinjam anggota berbeda.
3. Sulit tracking stok buku.
4. Tidak ada relasi yang jelas antar entitas.

## Tujuan adanya Normalisasi
* Tidak terjadi redundansi (data ganda),
* Memudahkan pemeliharaan data, dan
* Menjamin integritas data.

## Urutan Normalisasi Database
Normalisasi adalah teknik desain database yang membagi tabel besar menjadi tabel-tabel kecil yang lebih terstruktur. Ada tiga bentuk normal utama:

* **N1 atau 1NF**: merupakan menghilangkan kolom yang berisi nilai ganda
* **N2 atau 2NF**: merupakan menghilangkan ketergantungan parsial
* **N3 atau 3NF**: merupakan menghilangkan ketergantungan transitif

## Normalisasi Menggunakan AI
untuk menormalisasi database menggunakan AI, kita harus memasukkan prompt atau perintah yang sesuai. Diantara referensi prompt yang dapat digunakan adalah sebagai berikut :
```
1. Rekomendasikan struktur tabel baru hasil normalisasi hingga bentuk Third Normal Form (3NF) untuk sistem perpustakaan ZIL Library, termasuk daftar tabel dan relasinya.

2. Buatkan DDL (Data Definition Language) untuk setiap tabel hasil normalisasi, lengkap dengan Primary key, Foreign key dan Tipe data yang sesuai (MariaDB)

3. Buatkan SQL migration query untuk memindahkan data dari tabel zil_library_raw ke tabel-tabel hasil normalisasi tersebut, lengkap dengan INSERT INTO SELECT yang sesuai.

4. Buatkan query validasi untuk menghitung dan membandingkan jumlah data hasil migrasi
```

### Bentuk 3NF yang ideal:
untuk mendapatkan bentuk N3 atau 3NF yang sesuai berdasarkan contoh kasus berupa perpustakaan, perlu adanya data-data berikut, yaitu :
- *anggota*: menyimpan data anggota perpustakaan.  
- *buku*: menyimpan koleksi buku.  
- *peminjaman*: menyimpan transaksi pinjam.  
- *detail_peminjaman* (opsional kalau satu transaksi bisa >1 buku).

### DDL (data definition Language)

#### Query
```
CREATE TABLE anggota (
    id_anggota INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(100) NOT NULL,
    alamat VARCHAR(150),
    no_telepon VARCHAR(20)
);

CREATE TABLE buku (
    id_buku INT PRIMARY KEY AUTO_INCREMENT,
    judul VARCHAR(150) NOT NULL,
    penulis VARCHAR(100),
    tahun_terbit YEAR,
    isbn VARCHAR(20) UNIQUE
);

CREATE TABLE peminjaman (
    id_peminjaman INT PRIMARY KEY AUTO_INCREMENT,
    id_anggota INT NOT NULL,
    id_buku INT NOT NULL,
    tanggal_pinjam DATE NOT NULL,
    tanggal_kembali DATE,
    FOREIGN KEY (id_anggota) REFERENCES anggota(id_anggota),
    FOREIGN KEY (id_buku) REFERENCES buku(id_buku)
);
```
#### Mentransformasikan data
##### Anggota
```
INSERT INTO anggota (nama, alamat, no_hp)
SELECT DISTINCT nama_anggota, alamat, no_hp
FROM ZIL Library;
```
##### Buku
```
INSERT INTO buku (judul, penulis, penerbit, tahun, stok)
SELECT DISTINCT judul_buku, penulis, penerbit, tahun, 1
FROM data_awal;
```
##### Peminjaman
```
INSERT INTO peminjaman (id_anggota, tgl_pinjam, tgl_kembali)
SELECT a.id_anggota, d.tgl_pinjam, d.tgl_kembali
FROM data_awal d
JOIN anggota a ON a.nama = d.nama_anggota;
```
#### Validasi Hasil
```
SELECT COUNT(*) FROM anggota;
SELECT COUNT(*) FROM buku;
SELECT COUNT(*) FROM peminjaman;
```

## Penutup
Dengan adanya normalisasi database menggunakan AI, dapat memudahkan tugas pustakawan dalam mengelola data di perpustakaan, sehingga data dapat lebih rapih dan efisien.

## Referensi
1. Chatgpt
2. Gemini AI
