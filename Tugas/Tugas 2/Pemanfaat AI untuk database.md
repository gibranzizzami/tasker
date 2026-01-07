# Penjelasan AI untuk memelihara Database Beserta Penerapannya

### Penjelasan AI untuk Database

Database yang dibantu AI menggunakan algoritma *machine learning* untuk terus berkembang dan beradaptasi. Contohnya, AI secara otomatis mengoptimalkan database dari query masa lalu dan menyesuaikan pengindeksan yang sesuai. Ini memastikan bahwa database tidak hanya lebih cepat tetapi juga dan lebih mudah dikelola.

AI juga memiliki peran penting dalam keamanan data dalam database. Melalui deteksi anomali, sistem berbasis AI dapat mengidentifikasi dan menandai aktivitas yang mencurigakan, sehingga memungkinkan strategi mitigasi yang cepat dan efektif. AI akan meningkatkan ketahanan dan keamanan dalam database dengan pemeliharaan prediktif, sehingga mengurangi waktu henti dan memastikan kinerja yang konsisten.

Integrasi AI dalam database terutama bertujuan untuk meningkatkan efisiensi dan kinerja. Dengan memanfaatkan algoritma *machine learning*, AI dapat mengoptimalkan operasi basis data dengan belajar dari data historis dan membuat penyesuaian untuk meningkatkan kinerja di masa depan. Ini termasuk optimasi query, pengindeksan yang efisien, penghancur data, dan load balancing.

Optimalisasi Query adalah salah satu bidang di mana AI telah terbukti sangat efektif. Algoritma AI dapat menganalisis pola kueri dan waktu eksekusi, belajar memprediksi dan mengatur ulang kueri untuk kinerja yang lebih baik. Optimalisasi dinamis ini memastikan bahwa sumber daya digunakan secara efisien, mengarah ke sistem basis data yang lebih cepat dan lebih responsif.


***

# Penerapan AI untuk Normalisasi Database (1NF, 2NF, 3NF)

Normalisasi *database* adalah proses penting untuk mengelompokan *database*  demi mengurangi redundansi dan meningkatkan integritas data. Secara tradisional, normalisasi (mencapai 1NF, 2NF, dan 3NF) dilakukan secara manual oleh desainer *database*. Namun, **Kecerdasan Buatan (AI)**, khususnya *Large Language Models* (LLM) dan alat analisis data berbasis ML, dapat menjadi asisten canggih untuk mengotomatisasi, mempercepat, dan memverifikasi proses ini.

Untuk melakukan normalisasi database kita harus mengidentifikasi data seperti apa yang akan disimpan. Sebagai contoh saya punya data dari anggota perpustakaan. 

## Contoh Penerapan

### Anggota Perpustakaan

**Data awal (belum sesuai)** 


| id_anggota | nama         | alamat            | no_telepon  |
| ---------- | ------------ | ----------------- | ----------- |
| 1          | Budi Santoso | Jl. Melati No. 10 | 08123456789 |
| 2          | Siti Aminah  | Jl. Anggrek No. 5 | 08129876543 |
| 3          | Andi Pratama | Jl. Kenanga No. 7 | 08137778899 |
| 4          | Rehan Putra  | Jl. Anggrek No. 5 | 08129876543 |


    
### 1NF
Kita analisis langkah demi langkah normalisasi tabel tersebut dari **1NF sampai 3NF**.

---

### **Data Awal**

| id_anggota | nama         | alamat            | no_telepon  |
| ---------- | ------------ | ----------------- | ----------- |
| 1          | Budi Santoso | Jl. Melati No. 10 | 08123456789 |
| 2          | Siti Aminah  | Jl. Anggrek No. 5 | 08129876543 |
| 3          | Andi Pratama | Jl. Kenanga No. 7 | 08137778899 |
| 4          | Rehan Putra  | Jl. Anggrek No. 5 | 08129876543 |

---

## **1NF (First Normal Form)**

**Syarat:**

* Semua atribut bernilai tunggal (tidak ada data ganda dalam satu sel).

**Hasil pemeriksaan: Sudah memenuhi 1NF.**

---

## **2NF (Second Normal Form)**

**Syarat:**

* Sudah 1NF.
* Setiap kolom non-primer bergantung penuh pada kunci utama (bukan sebagian).

**Catatan:**
Kunci utama: `id_anggota`.
Setiap kolom (`nama`, `alamat`, `no_telepon`) bergantung pada `id_anggota`.

**Sudah memenuhi 2NF.**

---

## **3NF (Third Normal Form)**

**Syarat:**

* Sudah 2NF.
* Tidak ada *transitive dependency* (kolom non-primer tidak bergantung pada kolom non-primer lainnya).

**Masalah ditemukan:**
Baris ke-2 dan ke-4 memiliki **alamat dan nomor telepon yang sama**.
Ini menunjukkan bahwa **alamat dan nomor telepon mungkin milik rumah tangga atau alamat tertentu**, bukan unik untuk tiap anggota.


**Belum memenuhi 3NF.**

---

## **Perbaikan ke 3NF**

Pisahkan data menjadi dua tabel:

### **Tabel Anggota**

| id_anggota | nama         | id_alamat |
| ---------- | ------------ | --------- |
| 1          | Budi Santoso | 1         |
| 2          | Siti Aminah  | 2         |
| 3          | Andi Pratama | 3         |
| 4          | Rehan Putra  | 2         |

### **Tabel Alamat**

| id_alamat | alamat            | no_telepon  |
| --------- | ----------------- | ----------- |
| 1         | Jl. Melati No. 10 | 08123456789 |
| 2         | Jl. Anggrek No. 5 | 08129876543 |
| 3         | Jl. Kenanga No. 7 | 08137778899 |

---

**Kesimpulan:**

* Tabel awal **sudah 1NF dan 2NF**.
* Belum **3NF** karena ada ketergantungan antar atribut non-primer.
* Setelah dipisah menjadi tabel **Anggota** dan **Alamat**, data sudah **sesuai 3NF**.

## Muhammad Raihan 3C

<img width="963" height="1280" alt="image" src="https://github.com/user-attachments/assets/5c553e74-80d1-4704-92ba-d5c28ab3a638" />
