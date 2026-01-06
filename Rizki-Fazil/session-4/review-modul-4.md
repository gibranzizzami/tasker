## Menambahkan Data Dengan Insert
* Cek struktur tabel dengan `DESCRIBE buku;`. Perintah ini menampilkan daftar kolom beserta tipe datanya. Dengan demikian, pengguna tahu persis data apa yang harus dimasukkan. Hal ini mengurangi risiko kesalahan karena nilai yang tidak sesuai dengan tipe data. Pemeriksaan awal ini sangat dianjurkan sebelum memasukkan data.

### Perintah Dasar Insert
Perintah `INSERT` digunakan untuk menambahkan baris data baru ke dalam tabel. Sintaks dasarnya adalah `INSERT INTO nama_tabel (kolom1, kolom2, ...) VALUES (nilai1, nilai2, ...);`. Dengan sintaks ini, setiap nilai dipetakan langsung ke kolom yang sesuai. 
Contoh penggunaan perintah untuk menambahkan satu buku adalah sebagai berikut:
```
INSERT INTO buku (judul, penulis, tahun_terbit, isbn) VALUES
('Algoritma dan Struktur Data', 'Joko Santoso', 2019, '9786024456789');
```
Instruksi INSERT yang sederhana ini menjadi pintu masuk utama untuk semua data baru. Tanpa instruksi ini, tabel hanya berisi struktur kosong tanpa isi.

### Menambahkan Beberapa Data Sekaligus
Selain menambahkan satu baris data, MariaDB mendukung input banyak baris dalam satu query. Teknik ini disebut `multi-row insert`. Formatnya adalah menuliskan beberapa set nilai yang dipisahkan koma dalam satu perintah `INSERT`. Dengan cara ini, pengguna bisa menghemat waktu sekaligus sumber daya sistem. Hal ini sangat bermanfaat untuk mengisi data awal yang banyak.

Contoh penggunaan multi-row insert:
```
INSERT INTO buku (judul, penulis, tahun_terbit, isbn) VALUES
('Belajar MariaDB', 'Siti Lestari', 2021, '9786027788990'),
('Manajemen Basis Data Modern', 'Ahmad Yusuf', 2020, '9786021123456'),
('Pengantar Teknologi Informasi', 'Rudi Hartono', 2017, '9786025566778');
```
Dengan query ini, tiga buku baru langsung masuk ke tabel buku. Setiap baris akan mendapatkan ID unik dari sistem. Multi-row insert mempercepat pengisian koleksi dibandingkan perintah satu per satu. Hal ini membuat sistem lebih efisien dan terukur.

### Kesalahan Umum
* Tidak Menyebutkan Semua Kolom yang Dibutuhkan
Kesalahan ini terjadi ketika kolom wajib seperti judul tidak dicantumkan dalam query. Karena kolom tersebut memiliki constraint NOT NULL, MariaDB akan menolak input. Akibatnya, data tidak bisa masuk ke tabel.
* Jumlah Nilai Tidak Sesuai Kolom
Kesalahan kedua adalah jumlah nilai yang dimasukkan tidak sama dengan jumlah kolom. MariaDB tidak dapat memproses query ini dan akan memberikan error. Masalah ini sering terjadi akibat kelalaian dalam menulis query. Pada praktik nyata, hal ini akan menghentikan proses input data. Ketelitian adalah kunci untuk menghindarinya.
* Format Data Tidak Tepat
Kesalahan lain adalah memasukkan nilai dengan format yang salah. Misalnya, tahun terbit ditulis dalam bentuk teks alih-alih angka atau YEAR. MariaDB akan menolak atau mengonversi nilai secara tidak tepat. Hal ini merusak konsistensi data. Dampaknya, laporan koleksi per tahun bisa menjadi salah.
* ISBN Duplikat
Kesalahan terakhir adalah memasukkan ISBN yang sudah ada di tabel. Karena ISBN diberi constraint UNIQUE, MariaDB menolak data duplikat. Hal ini penting untuk menjaga keunikan koleksi. Duplikasi ISBN dapat mengacaukan inventaris. Perpustakaan harus mencegah hal ini sejak awal.

### best Practice
1. Gunakan Kolom yang Spesifik
Menuliskan nama kolom secara eksplisit membuat query lebih jelas dan aman. Praktik ini juga memudahkan pemeliharaan saat struktur tabel berubah.
2. Gunakan Multi-Row Insert untuk Efisiensi
Praktik terbaik lainnya adalah memanfaatkan multi-row insert. Hal ini mempercepat input data dan mengurangi beban server. Selain itu, query menjadi lebih ringkas dan mudah dibaca.
3. Perhatikan Integritas Data
Integritas data harus dijaga dengan memanfaatkan constraint.
4. Validasi Data Sebelum Insert
Melakukan validasi sebelum insert adalah langkah preventif yang bijak. Validasi bisa berupa pengecekan apakah data sudah ada.

## Menampilkan Data Menggunakan Select
### Perintah Dasar Select
Perintah `SELECT` adalah instruksi utama untuk menampilkan data dalam SQL. Bentuk paling sederhana dari perintah ini adalah `SELECT * FROM nama_tabel;`. Tanda bintang (*) berarti semua kolom akan ditampilkan. Dalam konteks tabel buku, query `SELECT * FROM buku;` akan menampilkan semua kolom dan semua baris data yang ada. Hasilnya berupa tabel dengan kolom sesuai definisi tabel buku.
Contoh penggunaan perintah dasar ini adalah:
```
SELECT * FROM buku;
```

### Menampilkan Data dengan Format yang Lebih Rapi
Setelah memahami perintah dasar, peserta dapat mulai mencoba menampilkan data dengan cara yang lebih rapi. Perintah SELECT * menampilkan semua kolom sekaligus, namun sering kali pengguna hanya membutuhkan sebagian kolom saja. 
Contoh perintah:
```
SELECT judul, penulis FROM buku;
```
Dengan query ini, hasil tampilan akan lebih ringkas dan mudah dibaca. Informasi yang ditampilkan juga lebih sesuai dengan kebutuhan pengguna.  Selain itu, hasil query bisa dibuat lebih informatif dengan memberikan alias pada kolom. Misalnya:
```
SELECT judul AS "Judul Buku", penulis AS "Nama Penulis" FROM buku;
```

### Best Practice
1. Selalu Tentukan Kolom yang Dibutuhkan
2. Gunakan Alias untuk Hasil Lebih Rapi
3. Verifikasi Struktur Tabel Sebelum Query
4. Gunakan `LIMIT` untuk Membatasi Hasil

### Kesalahan Umum
1. Lupa Menentukan Tabel
2. Salah Menyebut Nama Tabel
3. Salah Menuliskan Nama Kolom
4. Menampilkan Data dari Database yang Salah

### Mengubah data menggunakan Update
Perintah **UPDATE** digunakan untuk memperbarui data dalam tabel. Sintaksnya adalah:

```
UPDATE nama_tabel SET kolom = nilai_baru WHERE kondisi;
```

Klausa **WHERE** penting untuk membatasi baris yang diubah; tanpa itu, semua baris akan diperbarui.
Perintah ini bisa mengubah satu atau beberapa kolom sekaligus dalam satu query, seperti:

```
UPDATE buku SET judul = 'Algoritma Terapan', tahun_terbit = 2020 WHERE id_buku = 1;
```

UPDATE sangat berguna untuk menyesuaikan data, tetapi harus digunakan hati-hati karena kesalahan dapat memengaruhi banyak baris sekaligus.

### Mengubah Beberapa Baris Data Sekaligus
Perintah UPDATE dapat digunakan untuk mengubah banyak baris sekaligus dengan memperluas kondisi pada WHERE. Contohnya:
```
UPDATE buku SET penulis = 'Anonim' WHERE tahun_terbit < 2000;
```
Perintah ini mengubah semua data yang memenuhi syarat tersebut. Meskipun efisien untuk pembaruan massal, pengguna harus berhati-hati agar kondisi tidak terlalu luas. Disarankan melakukan preview before update, yaitu menjalankan query SELECT dengan kondisi yang sama terlebih dahulu untuk memastikan data yang akan diubah. Fitur multi-update sangat berguna dalam pemeliharaan data, memperbaiki kesalahan massal, dan menyesuaikan kebijakan baru. Kunci utamanya adalah menulis klausa WHERE secara jelas dan spesifik agar perubahan tetap akurat dan aman.

### Best Practice
1. Selalu Gunakan `WHERE`
2. Uji Kondisi dengan `SELECT`
3. Gunakan Transaksi (ROLLBACK)
4. Buat Cadangan Data

### Kesalahan Umum
1. Tidak Menyertakan Klausa  `WHERE`
2. Menggunakan Kondisi yang Terlalu Umum
3. Mengubah Nilai dengan Tipe Data Tidak Sesuai
4. Mengubah Banyak Baris Tanpa Verifikasi

### Menghapus Data dengan DELETE
Perintah DELETE digunakan untuk menghapus satu atau lebih baris dari tabel.Sintaks dasarnya:
```
DELETE FROM nama_tabel WHERE kondisi;
```
Sebelum menjalankan perintah **DELETE**, ada beberapa hal penting yang perlu diperhatikan agar penghapusan data berlangsung aman dan terkontrol. Klausa **WHERE** wajib digunakan untuk membatasi data yang akan dihapus, karena tanpa klausa ini seluruh baris dalam tabel dapat terhapus secara permanen. Pengguna juga harus memastikan bahwa database dan tabel yang aktif sudah benar, serta meninjau data terlebih dahulu menggunakan perintah **SELECT** dengan kondisi yang sama sebagai langkah *preview before delete* untuk menghindari kesalahan. Selain itu, penting untuk melakukan **backup data** sebelum penghapusan guna mencegah kehilangan informasi yang tidak dapat dipulihkan. Perintah **DELETE** juga bisa dimanfaatkan untuk penghapusan massal, seperti membersihkan data duplikat atau tidak valid, namun tetap harus dilakukan dengan sangat hati-hati agar data penting tidak ikut terhapus.

### Kesalahan umum:
1. Tidak menulis klausa `WHERE` Sehingga semua data terhapus.
2. Kondisi terlalu luas sehingga data penting ikut hilang.
3. Tidak memeriksa data sebelum menghapus.
4. Menghapus data yang masih dibutuhkan.

### Best Practice:
1. Selalu gunakan WHERE dengan kondisi spesifik.
2. Jalankan SELECT untuk verifikasi data target.
3. Gunakan Transaksi untuk Penghapusan Besar
4. Lakukan backup sebelum operasi DELETE.
