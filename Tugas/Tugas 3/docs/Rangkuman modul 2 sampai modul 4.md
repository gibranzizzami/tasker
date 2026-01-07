## Penjelasan tentang data

Data adalah representasi fakta, angka, atau simbol yang disimpan dalam bentuk tertentu sehingga dapat diproses menjadi informasi. Dalam konteks sistem informasi, data menjadi pondasi yang memungkinkan organisasi melakukan pencatatan dan analisis. 

Perpustakaan, misalnya, menyimpan data berupa judul buku, nama penulis, atau tahun terbit yang nantinya digunakan untuk kebutuhan pencarian koleksi. Tanpa data yang terdefinisi, aktivitas peminjaman maupun pengelolaan koleksi akan sulit dilaksanakan. 

## Perbedaan Data dan Informasi

Data adalah input, sedangkan informasi adalah output setelah dilakukan pemrosesan. Pada perpustakaan, data berupa daftar buku yang dipinjam setiap hari. Namun, jumlah total peminjaman per minggu adalah informasi yang berguna bagi manajemen. 

## Jenis - jenis data

Data dapat diklasifikasikan menjadi data terstruktur, semi-terstruktur, dan tidak terstruktur.
- Data terstruktur adalah data yang disimpan dalam format tabel dengan baris dan kolom jelas, seperti daftar anggota perpustakaan.
- Semi-terstruktur mencakup data dengan elemen fleksibel seperti JSON atau XML, contohnya metadata katalog buku. 
- Data tidak terstruktur meliputi dokumen teks panjang atau catatan resensi pembaca.

Klasifikasi ini memengaruhi cara pengolahan data dalam sistem.

## Perbedaan DBMS dan file biasa

- File biasa adalah metode penyimpanan data tradisional menggunakan sistem file di komputer. Data disimpan dalam bentuk teks atau spreadsheet tanpa aturan relasional yang ketat. Sistem ini mudah dibuat tetapi tidak efisien ketika data semakin banyak.

- File biasa tidak memiliki struktur kompleks seperti tabel dan relasi. Semua informasi disimpan dalam bentuk datar sehingga rawan redundansi.

## Pengertian Database Management System

Database Management System (DBMS) adalah perangkat lunak yang dirancang untuk mengelola data secara sistematis. DBMS memungkinkan penyimpanan, pengolahan, dan pengaksesan data dengan lebih efisien.

DBMS menyediakan mekanisme untuk menjaga integritas data. Misalnya, *primary key* memastikan bahwa setiap anggota memiliki ID unik. *Foreign key* menghubungkan data peminjaman dengan anggota dan koleksi buku. Mekanisme ini membuat data lebih konsisten dan terpercaya. DBMS memberikan jaminan kualitas yang tidak dimiliki file biasa.

Database digunakan untuk menyimpan, mengatur, dan mengolah informasi. Perkembangan teknologi digital memperluas potensi database dalam kehidupan sehari-hari. Hal ini menjadikan database sebagai komponen esensial dalam ekosistem informasi global.

## Perbedaan Struktural File vs DBMS

- File biasa menyimpan data dalam bentuk datar tanpa relasi. Sebaliknya, DBMS menyimpan data dalam tabel dengan relasi antar entitas. DBMS menghubungkan kedua data melalui foreign key. 

- DBMS mendukung normalisasi data. Normalisasi mengurangi redundansi dan meningkatkan konsistensi. Dalam file biasa, redundansi sulit dihindari karena data disimpan berulang-ulang.

## Perbedaan Operasional File vs DBMS

- Operasi pada file biasa terbatas pada pembacaan, penulisan, dan pengeditan. DBMS menyediakan operasi lebih canggih melalui SQL. Dengan SQL, pengguna dapat melakukan pencarian kompleks, agregasi, dan analisis. Dalam perpustakaan, query SQL dapat menampilkan buku terpopuler. File biasa tidak mendukung operasi setingkat ini.

- DBMS memiliki transaction management. Fitur ini memastikan bahwa operasi dilakukan secara atomik, konsisten, terisolasi, dan tahan lama (ACID). File biasa tidak memiliki konsep transaksi. Dalam perpustakaan, peminjaman yang gagal tercatat akan langsung terlihat. DBMS mencegah inkonsistensi ini.

- DBMS mendukung concurrency control. Banyak pengguna dapat bekerja secara bersamaan tanpa mengganggu data. File biasa tidak mampu mengelola akses simultan. Akibatnya, data mudah rusak jika banyak orang mengedit file.

- DBMS mendukung backup dan recovery otomatis. File biasa memerlukan salinan manual yang rentan hilang. DBMS memungkinkan pemulihan cepat setelah kegagalan sistem. Hal ini meningkatkan keandalan operasional.

## MariaDB

MariaDB adalah turunan dari MySQL setelah akuisisi MySQL oleh Oracle. Oleh karena itu, Monty Widenius, salah satu pencipta MySQL, memimpin pengembangan MariaDB. Nama MariaDB diambil dari nama anaknya.

MariaDB menawarkan banyak fitur unggulan untuk pemula maupun profesional. Salah satunya adalah dukungan penuh terhadap SQL standar. Dengan SQL, pengguna dapat menulis query universal yang dipahami di banyak DBMS.

### Perbedaan MariaDB dengan MySQL

Salah satunya perbedaanya adalah lisensi open-source yang benar-benar bebas. MySQL, meski open-source, dikendalikan Oracle. MariaDB bebas dari kendali perusahaan besar. Hal ini memberi fleksibilitas lebih luas.

MariaDB memiliki optimisasi query lebih baik. Beberapa benchmark menunjukkan performa MariaDB unggul dibanding MySQL. Hal ini penting bagi perpustakaan besar dengan ribuan transaksi. Performa yang baik memastikan layanan tetap lancar. 

Perbedaan ini menunjukkan bahwa MariaDB bukan sekadar aplikasi yang sama dengan MySQL. MariaDB menawarkan nilai tambah nyata.

### Keunggulan MariaDB bagi Organisasi

- MariaDB menawarkan keunggulan biaya karena bersifat open-source. Organisasi tidak perlu membayar lisensi mahal. Hemat biaya membuat MariaDB lebih terjangkau. Hal ini memudahkan bagi institusi dengan sumber daya terbatas.

- MariaDB mendukung skalabilitas tinggi.

- MariaDB mudah diintegrasikan dengan aplikasi lain.

Keunggulan MariaDB membuatnya pilihan ideal bagi organisasi.

## Potensi Database

Potensi database juga terlihat dari kemampuannya mendukung inovasi. Dengan data yang terorganisir, organisasi dapat melakukan analisis prediktif dan menghasilkan wawasan baru.

Zhang & Ma (2021) dalam International Journal of Educational Technology menekankan peran database dalam mendukung pendidikan berbasis teknologi. Mereka menjelaskan bahwa database memungkinkan integrasi antara sistem akademik, perpustakaan, dan e-learning. Hal ini menciptakan ekosistem digital yang saling terhubung.

## Database

Database adalah kumpulan data yang terorganisasi dan dikelola secara sistematis. Berbeda dengan file biasa, database memiliki struktur yang memungkinkan data dapat diakses, diperbarui, dan dianalisis dengan lebih mudah.

Database juga memberikan kemampuan pencarian dan pelaporan yang lebih cepat. Perpustakaan dapat mengetahui koleksi buku yang paling sering dipinjam dalam hitungan detik. Informasi ini sangat berguna untuk pengambilan keputusan. Sistem manual membutuhkan waktu lama untuk menghasilkan laporan yang sama. Database menjadikan proses ini lebih efisien dan dapat diandalkan.

### Tabel

Tabel adalah struktur dasar dalam database relasional. Data disimpan dalam bentuk baris dan kolom dengan aturan tertentu. Setiap tabel biasanya merepresentasikan satu entitas dunia nyata. Misalnya, tabel anggota merepresentasikan semua pengguna perpustakaan.

Dalam tabel, setiap kolom menyimpan atribut tertentu. Contohnya, kolom “nama” menyimpan nama anggota, sedangkan kolom “alamat” menyimpan alamat anggota. Struktur ini memudahkan pengorganisasian informasi. Dengan pemisahan atribut, data menjadi lebih mudah dianalisis.

Baris dalam tabel disebut record dan mewakili satu instansi dari entitas tersebut. Misalnya, baris pertama dalam tabel anggota berisi informasi untuk satu orang anggota. Setiap baris bersifat unik, terutama jika dilengkapi dengan primary key. Primary key inilah yang menjaga konsistensi data. Tabel anggota akan berisi ribuan baris namun tetap teratur.

Tabel juga memungkinkan adanya relasi antar entitas. Tabel peminjaman, misalnya, menghubungkan tabel anggota dengan tabel buku. Relasi ini memberikan gambaran lengkap tentang siapa meminjam buku apa dan kapan. Relasi antar tabel menjadikan database lebih bermanfaat. Struktur ini membuat database fleksibel dan kuat.

### Baris sebagai Record Data

Baris dalam tabel disebut record, yaitu kumpulan informasi tentang satu entitas. Dalam tabel anggota, satu baris berisi nama, alamat, dan nomor telepon seorang anggota. Baris ini unik karena memiliki ID khusus. ID tersebut membedakan satu anggota dari yang lain.

Dalam tabel buku, setiap baris merepresentasikan sebuah koleksi. Baris tersebut mencakup judul, penulis, tahun terbit, dan ISBN. Dengan struktur ini, setiap koleksi bisa dikenali dengan jelas. Tidak ada dua baris yang identik karena masing-masing memiliki identitas unik. Database menjaga keunikan melalui konsep primary key.

Baris juga memungkinkan analisis yang lebih detail. Perpustakaan bisa menghitung jumlah anggota aktif hanya dengan menghitung jumlah baris pada tabel tertentu. Baris juga dapat difilter sesuai kondisi tertentu, misalnya hanya menampilkan anggota dari kota tertentu. Fleksibilitas ini menjadikan baris sebagai elemen penting. Database modern tidak dapat dipisahkan dari konsep baris.

### Kolom sebagai Atribut Data

Kolom dalam tabel menyimpan atribut spesifik dari entitas. Misalnya, kolom “nama” menyimpan nama anggota, sementara kolom “alamat” menyimpan alamat anggota. Setiap kolom memiliki tipe data tertentu yang sesuai dengan informasi yang disimpan. Hal ini menjaga konsistensi dan keakuratan data. Kolom adalah penjelasan detail dari entitas.

Kolom membantu dalam pemisahan informasi yang berbeda. Dengan pemisahan, data lebih mudah dianalisis dan diproses. Misalnya, perpustakaan dapat dengan cepat membuat daftar semua nomor telepon anggota dari kolom khusus tersebut. Hal ini tidak mungkin dilakukan jika semua informasi bercampur. Kolom memberikan struktur pada informasi.

## Relasi antar tabel

Relasi antar tabel adalah keunggulan utama database relasional. Relasi memungkinkan data dari tabel berbeda saling terhubung. Misalnya, tabel peminjaman menghubungkan tabel anggota dengan tabel buku. Dengan cara ini, sistem dapat mengetahui siapa meminjam buku tertentu. Relasi memberikan gambaran utuh tentang data.

Relasi biasanya diwujudkan melalui penggunaan *foreign key*. Foreign key adalah kolom dalam suatu tabel yang merujuk ke primary key tabel lain.

Misalnya,  "id_anggota" dalam tabel peminjaman merujuk ke tabel anggota. Relasi ini memastikan integritas antar data. Tanpa relasi, data akan terisolasi dan sulit digabungkan.

## Peran Primary Key

Primary key adalah pengenal unik untuk setiap baris dalam tabel. Tanpa primary key, data bisa duplikat dan sulit dibedakan. Misalnya, dua anggota dengan nama sama dapat dibedakan melalui ID unik. Primary key menjamin keunikan dan konsistensi data. Database modern selalu membutuhkan primary key.

Primary key biasanya berupa angka yang bertambah otomatis. Dalam tabel anggota, kolom id_anggota menjadi primary key. Sistem akan otomatis menambahkan nilai baru setiap kali ada anggota baru. Hal ini mencegah duplikasi yang tidak diinginkan. Primary key adalah fondasi integritas data.

## Kolaborasi Database, Tabel, Baris, dan Kolom

Database, tabel, baris, dan kolom adalah komponen yang saling melengkapi. Database menjadi wadah utama, tabel sebagai struktur, baris sebagai entitas, dan kolom sebagai atribut. Semua elemen ini bekerja sama untuk menyusun sistem informasi. Tanpa salah satunya, database tidak dapat berfungsi optimal. Konsep ini mencerminkan integrasi.

Kolaborasi ini juga memudahkan analisis data. Setiap baris dan kolom memberikan informasi yang berbeda. Database memungkinkan penggabungan ini dengan efisien. Sistem manual tidak mampu memberikan hasil secepat itu.

Selain itu, kolaborasi ini meningkatkan akurasi dan transparansi. Semua data tersimpan dalam struktur yang jelas. Relasi antar tabel memastikan informasi tetap konsisten. Perpustakaan mendapat sistem yang lebih terpercaya. Pemahaman kolaborasi ini adalah langkah penting dalam perjalanan belajar database.

## Tipe Data Sederhana

Tipe data adalah aturan yang menentukan bentuk dan sifat data yang disimpan dalam kolom tabel. Dengan tipe data, sistem database dapat membedakan antara angka, teks, tanggal, atau format lain. Dalam MariaDB, pemilihan tipe data sangat penting untuk menjaga keakuratan dan konsistensi. Tipe data membantu sistem mengenali batasan setiap informasi.

Definisi tipe data menunjukkan perannya sebagai fondasi integritas. Database relasional seperti MariaDB menggunakan tipe data untuk menjaga aturan yang konsisten. Setiap kolom wajib memiliki tipe data tertentu. Hal ini memastikan sistem bekerja dengan baik dan mencegah kesalahan input.

### Tipe Data Angka (Numeric)

Tipe data angka digunakan untuk menyimpan bilangan bulat maupun desimal. Dalam MariaDB, tipe angka sederhana mencakup INT, BIGINT, dan DECIMAL.

- INT digunakan untuk angka bulat.
- DECIMAL untuk angka dengan koma. 

Namun, tipe data angka harus dipilih dengan hati-hati. INT cocok untuk data kecil hingga menengah, sedangkan BIGINT untuk angka besar. Jika salah memilih, data bisa melampaui kapasitas kolom.

### Tipe Data Teks (String)

Tipe data teks digunakan untuk menyimpan karakter, kata, atau kalimat. Dalam MariaDB, tipe teks umum adalah CHAR dan VARCHAR. CHAR digunakan untuk data dengan panjang tetap, sedangkan VARCHAR untuk panjang bervariasi. Misalnya, nama anggota lebih cocok menggunakan VARCHAR(100). Dengan tipe ini, teks disimpan secara fleksibel.

Namun, penggunaan teks harus disesuaikan dengan kebutuhan. Jangan memberikan panjang kolom terlalu besar karena boros penyimpanan. Sebaliknya, panjang terlalu kecil bisa memotong data. Dalam desain tabel, pemilihan panjang VARCHAR harus proporsional.

### Tipe Data Tanggal dan Waktu

Tipe data tanggal menyimpan informasi waktu dalam format khusus. MariaDB menyediakan tipe DATE, TIME, DATETIME, dan TIMESTAMP. DATE menyimpan tanggal, TIME menyimpan jam, dan DATETIME menyimpan keduanya. Misalnya, tanggal peminjaman buku dapat dicatat dalam kolom DATE. Dengan format ini, sistem dapat mengolah data kronologis.

Selain itu, MariaDB memungkinkan perbandingan waktu. Query dapat mencari semua transaksi setelah tanggal tertentu. Dengan cara ini, data bisa difilter sesuai kebutuhan. Tipe tanggal menjadikan database lebih cerdas.

## Membuat Database

### **Persiapan:**

Sebelum membuat database, pastikan MariaDB sudah berjalan di komputer Anda. Bukalah terminal atau command prompt lalu login dengan akun root menggunakan perintah:

```
mysql -u root -p.
```

Khusus pengguna archlinux, menggunakan perintah:

```
mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
```

Di Linux, cara mengecek apakah MariaDB srvice aktif dengan perintah:

```
systemctl status mariadb
```

Jika layanan mati, hidupkan dengan perintah:

```
systemctl start mariadb
```

### **Perintah Dasar ```CREATE DATABASE```:**

Setelah masuk ke MariaDB, buat database baru dengan perintah:

```
CREATE DATABASE "nama database"
```

Setelah membuat database, jangan lupa untuk memilihnya dengan perintah:

```
USE "nama database"
```

MariaDB menyediakan beberapa opsi tambahan untuk ```CREATE DATABASE```. Salah satunya adalah menentukan karakter set dengan perintah:

```
DEFAULT CHARACTER SET utf8mb4
```

Perintah ini memastikan teks disimpan dengan format standar yang mendukung banyak bahasa. 

### **Verifikasi Database yang Dibuat:**

Setelah membuat database, pastikan database sudah ada. Gunakan perintah:

```
SHOW DATABASES;
```

Selain itu, Anda juga bisa memeriksa database aktif dengan:

```
SELECT DATABASE();
```

Jika membuat database dengan nama yang sudah ada. MariaDB akan menolak perintah tersebut. Untuk menghindarinya, gunakan:

```
CREATE DATABASE IF NOT EXISTS perpustakaan;
```

Dengan cara ini, error bisa dihindari.

### Membuat Tabel

**Perintah Dasar ```CREATE TABLE```:**

Contoh sederhana adalah pembuatan tabel anggota:

```
CREATE TABLE anggota (
    id_anggota INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(100),
    alamat VARCHAR(150),
    no_telepon VARCHAR(20)
);
```

**Membuat Tabel Buku:**

Contoh struktur tabel buku adalah:

```
CREATE TABLE buku (
    id_buku INT PRIMARY KEY AUTO_INCREMENT,
    judul VARCHAR(150) NOT NULL,
    penulis VARCHAR(100),
    tahun_terbit YEAR,
    isbn VARCHAR(20) UNIQUE
);
```

**Kesalahan Umum:**

1. Lupa menggunakan ```USE```
2. Tidak menentukan Primary Key
3. Salah memilih tipe data
4. Panjang kolom tidak memadai

**Best Practice:**

1. Menentukan Primary Key dengan ```AUTO_INCREMENT```
2. Penggunaan Constraint ```NOT NULL``` dan ```UNIQUE```. Constraint ini membantu menjaga integritas data. Misalnya Judul menggunakan **NOT NULL** dan ISBN memakai **UNIQUE** agar tidak ada buku tercatat ganda.

## Mengisi dan Mengolah Data

### INSERT

**Perintah Dasar ```INSERT```:**

Perintah INSERT digunakan untuk menambahkan baris data baru ke dalam tabel. Sintaks dasarnya adalah:

```
INSERT INTO nama_tabel (kolom1, kolom2, ...) VALUES (nilai1, nilai2, ...);
```

Dengan sintaks ini, setiap nilai dipetakan langsung ke kolom yang sesuai. Pengguna tidak perlu menuliskan kolom dengan AUTO_INCREMENT seperti ```id_buku```, karena MariaDB akan mengisinya otomatis.

**Menambahkan Beberapa Data Sekaligus:**

Selain menambahkan satu baris data, MariaDB mendukung input banyak baris dalam satu query. Teknik ini disebut multi-row insert. Contoh penggunaan multi-row insert:

```
INSERT INTO buku (judul, penulis, tahun_terbit, isbn) VALUES
('Belajar MariaDB', 'Siti Lestari', 2021, '9786027788990'),
('Manajemen Basis Data Modern', 'Ahmad Yusuf', 2020, '9786021123456'),
('Pengantar Teknologi Informasi', 'Rudi Hartono', 2017, '9786025566778');
```

###  ```SELECT ```

**Perintah Dasar ```SELECT```:**

Perintah SELECT adalah instruksi utama untuk menampilkan data dalam SQL. Bentuk paling sederhana dari perintah ini adalah:

```
SELECT * FROM nama_tabel;
```

Tanda bintang (*) berarti semua kolom akan ditampilkan. Walaupun sederhana, perintah ini adalah dasar bagi query-query yang lebih kompleks. Misalnya, perintah SELECT bisa digabungkan dengan klausa lain seperti ```WHERE```, ```ORDER BY```, atau ```LIMIT```.

**Menampilkan Data dengan Format yang Lebih Rapi:**

Contoh perintah:

```
SELECT judul, penulis FROM buku;
```

Selain itu, hasil query bisa dibuat lebih informatif dengan memberikan alias pada kolom. Misalnya:

```
SELECT judul AS "Judul Buku", penulis AS "Nama Penulis" FROM buku;
```

###  ```UPDATE```

**Perintah Dasar UPDATE:**

Perintah UPDATE digunakan untuk memperbarui nilai pada satu atau lebih kolom dalam tabel. Sintaks umum perintah ini adalah:

```
UPDATE nama_tabel SET kolom1 = nilai_baru WHERE kondisi;
```

Perintah UPDATE juga dapat digunakan untuk memperbarui lebih dari satu kolom dalam satu baris. Misalnya, pengguna ingin mengubah judul sekaligus tahun terbit:

```
UPDATE buku SET judul = 'Algoritma Terapan', tahun_terbit = 2020 WHERE id_buku = 1;
```

**Mengubah Beberapa Baris Data Sekaligus:**

Selain mengubah satu baris, UPDATE juga bisa digunakan untuk memperbarui banyak baris sekaligus. Hal ini dilakukan dengan memperluas kondisi dalam klausa WHERE. Misalnya, jika semua buku yang terbit sebelum tahun 2000 ingin diubah penulisnya menjadi “Anonim”, query yang digunakan adalah:

```
UPDATE buku SET penulis = 'Anonim' WHERE tahun_terbit < 2000;
```

### ```DELETE```

**Perintah Dasar DELETE:**

Perintah DELETE digunakan untuk menghapus satu atau lebih baris dari tabel. Sintaks umumnya adalah:

```
DELETE FROM nama_tabel WHERE kondisi;
```

Kata kunci ```WHERE``` sangat penting karena menentukan baris mana yang akan dihapus. Tanpa WHERE, semua baris dalam tabel akan hilang. Misalnya, untuk menghapus satu buku dengan ```id_buku = 5```, query yang digunakan adalah:

```
DELETE FROM buku WHERE id_buku = 5;
```

Selain menghapus satu baris, DELETE juga dapat digunakan untuk menghapus lebih dari satu baris sekaligus. Perintahnya yaitu:

```
DELETE FROM buku WHERE tahun_terbit < 1990;
```

**Menghapus Beberapa Baris Sekaligus:**

Perintah DELETE memungkinkan pengguna menghapus banyak baris sekaligus dengan menggunakan kondisi tertentu. Misalnya, jika perpustakaan ingin menghapus semua buku yang tidak memiliki ISBN (kosong), maka query yang digunakan adalah:

```
DELETE FROM buku WHERE isbn IS NULL;
```

**Lakukan Backup Sebelum Menghapus:**

Sebelum menghapus data penting, lakukan backup terlebih dahulu dengan query:

```
CREATE TABLE buku_backup AS SELECT * FROM buku;
```
