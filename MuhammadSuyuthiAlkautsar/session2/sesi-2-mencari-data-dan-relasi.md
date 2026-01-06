# 📘 Dokumentasi Pembelajaran – Sesi 2
## Basis Data Perpustakaan (SQL)

Dokumentasi ini berisi rangkuman materi **Sesi 2** yang mencakup pencarian data, relasi antar tabel, JOIN dasar, dan ringkasan data menggunakan fungsi agregasi.

---

 Mencari Data

**Tujuan:**  
Mempelajari cara mencari, menyaring, dan mengurutkan data, serta praktik pencarian buku dalam database.

### 1️⃣ Kolom (SELECT)
Peserta mempelajari cara memilih kolom tertentu menggunakan perintah `SELECT`.  
Modul ini membantu menampilkan hanya informasi yang relevan dari sebuah tabel.

### 2️⃣ WHERE
Modul ini mengajarkan penggunaan klausa `WHERE` untuk menyaring data.  
Peserta berlatih membuat kondisi sederhana untuk menemukan data yang sesuai.

### 3️⃣ Operator
Peserta mempelajari operator perbandingan seperti:
- `=`
- `>`
- `<`
- `LIKE`

Modul ini memperkenalkan penyaringan data menggunakan logika sederhana dalam query SQL.

### 4️⃣ Urut (ORDER BY)
Modul ini mengajarkan cara mengurutkan hasil query menggunakan `ORDER BY`.  
Peserta belajar menampilkan data berdasarkan:
- Urutan abjad
- Urutan angka

### 5️⃣ Praktik
Peserta melakukan praktik membuat query untuk:
- Mencari daftar buku berdasarkan **nama penulis**

Modul ini memperkuat pemahaman penggunaan:
- `SELECT`
- `WHERE`
- `ORDER BY`

---

 Hubungan Antar Tabel

**Tujuan:**  
Mengenal tabel anggota dan peminjaman, memahami primary key, foreign key, serta relasi antar tabel.

### 1️⃣ Anggota
Modul ini mengajarkan cara membuat tabel **anggota** dengan kolom:
- ID
- Nama
- Alamat

Peserta memahami prinsip dasar desain tabel anggota perpustakaan.

### 2️⃣ Peminjaman
Peserta berlatih membuat tabel **peminjaman** yang menyimpan:
- Tanggal pinjam
- Tanggal kembali

Modul ini menekankan pentingnya tabel relasional.

### 3️⃣ Primary Key
Modul ini menjelaskan konsep **primary key** sebagai pengenal unik setiap baris data.  
Peserta memahami perannya dalam menjaga integritas data.

### 4️⃣ Foreign Key
Peserta mempelajari **foreign key** sebagai kunci penghubung antar tabel.  
Modul ini membantu memahami relasi antar data dalam sistem database.

### 5️⃣ Praktik
Peserta mempraktikkan relasi antara:
- Tabel anggota
- Tabel peminjaman

Modul ini memperkuat pemahaman primary key dan foreign key melalui studi kasus perpustakaan.

---

 JOIN Dasar

**Tujuan:**  
Mempelajari cara menggabungkan tabel menggunakan JOIN dan membuat laporan peminjaman buku.

### 1️⃣ INNER JOIN
Peserta mempelajari `INNER JOIN` untuk menggabungkan data dari dua tabel yang saling berhubungan.  
Contoh: menampilkan data anggota beserta buku yang dipinjam.

### 2️⃣ LEFT JOIN
Modul ini menjelaskan `LEFT JOIN` untuk menampilkan:
- Seluruh data dari tabel utama
- Termasuk data yang tidak memiliki pasangan

Cocok untuk laporan data tidak lengkap.

### 3️⃣ RIGHT JOIN
Peserta mempelajari `RIGHT JOIN` untuk menampilkan semua data dari tabel kanan meskipun tidak memiliki pasangan di tabel kiri.

### 4️⃣ Praktik
Peserta mempraktikkan query gabungan menggunakan:
- `INNER JOIN`
- `LEFT JOIN`

Digunakan untuk menghasilkan laporan peminjaman buku per anggota.

### 5️⃣ Latihan
Peserta berlatih secara mandiri membuat laporan gabungan antara:
- Tabel anggota
- Tabel buku
- Tabel peminjaman

Latihan ini memperkuat pemahaman konsep JOIN secara menyeluruh.

---

 Ringkasan Data

**Tujuan:**  
Menggunakan fungsi agregasi, memahami `GROUP BY`, serta membedakan `HAVING` dan `WHERE`.

### 1️⃣ COUNT
Peserta mempelajari fungsi `COUNT` untuk menghitung jumlah baris data.  
Contoh penggunaan:
- Total buku
- Total anggota

### 2️⃣ Agregasi
Modul ini membahas fungsi agregasi:
- `SUM`
- `AVG`
- `MIN`
- `MAX`

Peserta belajar menganalisis data numerik dalam database.

### 3️⃣ GROUP BY
Peserta belajar membuat laporan terkelompok menggunakan `GROUP BY`.  
Contoh: menghitung jumlah peminjaman per anggota.

### 4️⃣ HAVING
Modul ini menjelaskan perbedaan antara:
- `WHERE` → penyaringan sebelum agregasi
- `HAVING` → penyaringan setelah agregasi

### 5️⃣ Praktik
Peserta mempraktikkan query menggunakan:
- `COUNT`
- `GROUP BY`

untuk membuat laporan jumlah peminjaman per anggota.

---

## ✅ Penutup

Sesi 2 membekali peserta dengan kemampuan dasar pengolahan data relasional, mulai dari pencarian data sederhana hingga pembuatan laporan menggunakan JOIN dan agregasi. Materi ini menjadi fondasi penting untuk pengembangan sistem database perpustakaan yang lebih kompleks.

---

