# Pembuatan Database Perekaman Bacaan di MariaDB

## 1. Membuat database
login ke mariadb dan gunakan perintah di bawah untuk membuat database perekam bacaan.
    
```sql
CREATE DATABASE READING_LOG;
```

lalu pilih database

```sql
USE READING_LOG;
```

## 2. Membuat Table Buku

```sql
CREATE TABLE buku (
  id_buku INT PRIMARY KEY AUTO_INCREMENT,
  Judul VARCHAR(200) Not NULL,
  Penulis Varchar(100),
  Tahun_terbit year,
  media varchar(50),
  status varchar(50)
);
```

## 3. Masukkan data ke table Buku
masukkan data ke table seperti contoh di bawah:

```sql
INSERT INTO buku (Judulm Penulis, Tahun_terbit, media, status) VALUES
  ('The Picture of Dorian Gray', 'Oscar WIlde', 2021, 'Volume (perpustakaan), 'selesai');
```

## 4. Tampilkan Hasil Table
Gunakan command berikut untuk menampilkan hasil :

```sql
select from * buku;
```




