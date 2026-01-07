Pemanfaatan AI Untuk Normalisasi Database Hingga 3NF
1. Pendahuluan

Normalisasi database adalah proses terstruktur untuk mengorganisasi data guna menghilangkan redundansi dan ketergantungan yang tidak diinginkan. Studi ini mengaplikasikan AI untuk membantu menormalisasi database sistem Perpustakaan Fathur dari tabel belum dinormalisasi hingga bentuk normal ketiga (3NF).

2. Tujuan

Tujuan normalisasi dengan AI:
    Menghilangkan duplikasi data secara otomatis.
    Memastikan konsistensi dan integritas data.
    Membuat struktur tabel yang optimal dan efisien.
    Memudahkan pengembangan dan pemeliharaan sistem basis data Perpustakaan Fathur.

3. Isi
A. Tabel Belum Dinormalisasi (UNF)
Database awal menyimpan data sebagai berikut:

text

| ID_Peminjaman | Nama_Peminjam | Alamat  | ID_Buku    | Judul_Buku                            | Pengarang               | Tanggal_Pinjam | Tanggal_Kembali |
| ------------- | ------------- | ------- | ---------- | ------------------------------------- | ----------------------- | -------------- | --------------- |
| 1             | Andi          | Jakarta | B101, B102 | Manajemen Perpustakaan, Arsip Digital | Dr. Sari Wijaya, Fajar   | 2024-01-01     | 2024-01-07      |
| 2             | Sinta         | Bandung | B103       | Teknologi Informasi Perpustakaan      | Dr. Sari Wijaya          | 2024-01-02     | 2024-01-08      |

Tabel ini melanggar aturan atomicitas karena kolom ID_Buku, Judul_Buku, dan Pengarang berisi multiple values.
B. Normalisasi 1NF dengan AI

AI memproses tabel untuk menghilangkan repeating group dengan memecah multiple values menjadi baris terpisah:

text

| ID_Peminjaman | Nama_Peminjam | Alamat  | ID_Buku | Judul_Buku              | Pengarang       | Tanggal_Pinjam | Tanggal_Kembali |
| ------------- | ------------- | ------- | ------- | ----------------------- | --------------- | -------------- | --------------- |
| 1             | Andi          | Jakarta | B101    | Manajemen Perpustakaan  | Dr. Sari Wijaya | 2024-01-01     | 2024-01-07      |
| 1             | Andi          | Jakarta | B102    | Arsip Digital           | Fajar           | 2024-01-01     | 2024-01-07      |
| 2             | Sinta         | Bandung | B103    | Teknologi Informasi Perpustakaan | Dr. Sari Wijaya | 2024-01-02     | 2024-01-08      |

sql
CREATE TABLE Peminjaman_1NF (
    ID_Peminjaman INT,
    Nama_Peminjam VARCHAR(100),
    Alamat VARCHAR(100),
    ID_Buku VARCHAR(10),
    Judul_Buku VARCHAR(100),
    Pengarang VARCHAR(100),
    Tanggal_Pinjam DATE,
    Tanggal_Kembali DATE
);

C. Normalisasi 2NF dengan AI

AI mengidentifikasi partial dependency dan memecah tabel menjadi:
    Peminjam
text
| ID_Peminjam | Nama_Peminjam | Alamat  |
| ----------- | ------------- | ------- |
| 1           | Andi          | Jakarta |
| 2           | Sinta         | Bandung |
  Buku
text
| ID_Buku | Judul_Buku                     | Pengarang       |
| ------- | ------------------------------ | --------------- |
| B101    | Manajemen Perpustakaan          | Dr. Sari Wijaya |
| B102    | Arsip Digital                   | Fajar           |
| B103    | Teknologi Informasi Perpustakaan | Dr. Sari Wijaya |

   Peminjaman

text
| ID_Peminjaman | ID_Peminjam | ID_Buku | Tanggal_Pinjam | Tanggal_Kembali |
| ------------- | ----------- | ------- | -------------- | --------------- |
| 1             | 1           | B101    | 2024-01-01     | 2024-01-07      |
| 2             | 1           | B102    | 2024-01-01     | 2024-01-07      |
| 3             | 2           | B103    | 2024-01-02     | 2024-01-08      |

sql
CREATE TABLE Peminjam (
    ID_Peminjam INT PRIMARY KEY,
    Nama_Peminjam VARCHAR(100),
    Alamat VARCHAR(100)
);

CREATE TABLE Buku (
    ID_Buku VARCHAR(10) PRIMARY KEY,
    Judul_Buku VARCHAR(100),
    Pengarang VARCHAR(100)
);

CREATE TABLE Peminjaman (
    ID_Peminjaman INT PRIMARY KEY,
    ID_Peminjam INT,
    ID_Buku VARCHAR(10),
    Tanggal_Pinjam DATE,
    Tanggal_Kembali DATE,
    FOREIGN KEY (ID_Peminjam) REFERENCES Peminjam(ID_Peminjam),
    FOREIGN KEY (ID_Buku) REFERENCES Buku(ID_Buku)
);

D. Normalisasi 3NF dengan AI

AI membuang transitive dependency dengan memisahkan data Pengarang ke tabel baru:
Pengarang

text
| ID_Pengarang | Nama_Pengarang  |
| ------------ | ----------------|
| P001         | Dr. Sari Wijaya |
| P002         | Fajar           |

Buku (Revisi)

text
| ID_Buku | Judul_Buku                     | ID_Pengarang |
| ------- | ------------------------------ | ------------ |
| B101    | Manajemen Perpustakaan          | P001         |
| B102    | Arsip Digital                   | P002         |
| B103    | Teknologi Informasi Perpustakaan | P001         |

sql
CREATE TABLE Pengarang (
    ID_Pengarang VARCHAR(10) PRIMARY KEY,
    Nama_Pengarang VARCHAR(100)
);

CREATE TABLE Buku (
    ID_Buku VARCHAR(10) PRIMARY KEY,
    Judul_Buku VARCHAR(100),
    ID_Pengarang VARCHAR(10),
    FOREIGN KEY (ID_Pengarang) REFERENCES Pengarang(ID_Pengarang)
);

Kesimpulan

Normalisasi database Perpustakaan Fathur hingga 3NF dengan bantuan AI menghasilkan:

Penghapusan redundansi data secara efektif

Struktur database yang terorganisir dan efisien.

Kemudahan dalam pemeliharaan dan pengembangan sistem.

Data yang konsisten dan integritas terjaga dengan baik.
