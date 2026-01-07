## Pemanfaatan ai untuk normalisasi database
Dalam pengembangan sistem informasi, struktur database yang baik sangat penting agar data terorganisir, tidak redundan, dan mudah dikelola. Normalisasi adalah proses untuk mencapai hal tersebut. Sayangnya, banyak pengembang atau analis data pemula masih kesulitan memahami dan menerapkan normalisasi database dengan benar.

Di sinilah Artificial Intelligence (AI) berperan penting. Dengan kemampuan analisis pola dan pemrosesan bahasa alami, AI dapat membantu:

1. Menganalisis struktur tabel mentah.

2. Mengidentifikasi ketergantungan antar atribut.

3. Memberikan saran pemecahan tabel.

4. Menghasilkan struktur tabel yang sudah ternormalisasi.

### Peran AI untuk normalisasi database

**1. Pengenalan Entitas & Atribut**

  AI bisa mengenali entitas seperti “Pengarang” atau “Penerbit” yang seharusnya dipisah dari tabel utama.

**2. Deteksi Redundansi Data**

AI dapat menganalisis data contoh dan menemukan pola pengulangan (misalnya nama penerbit sama di banyak baris).

**3. Generasi Struktur Tabel Baru**

AI bisa membuat struktur tabel baru secara otomatis berdasarkan prinsip normalisasi NF1, NF2, dan NF3.

**4. Pembuatan Relasi Foreign Key**

AI juga bisa menyarankan relasi antar tabel, seperti foreign key dan constraint lainnya.






## Studi Kasus table "Buku"

**Struktur awal (belum ternomalisasi)**
```
| id_buku | judul           | pengarang     | penerbit        | tahun_terbit | stok |
| ------- | --------------- | ------------- | --------------- | ------------ | ---- |
| 1       | Laskar Pelangi  | Andrea Hirata | Bentang Pustaka | 2005         | 10   |
| 2       | Sang Pemimpi    | Andrea Hirata | Bentang Pustaka | 2006         | 8    |
| 3       | Negeri 5 Menara | Ahmad Fuadi   | Gramedia        | 2009         | 5    |
```

### Tahapan 1NF

Copy table dan paste di AI dengan promt; 
```
apakah table ini sudah memenuhi 1NF? jika belum apa yang perlu di perbaiki?
```
Syarat memenuhi 1NF: **Semua nilai dalam kolom harus atomik (tidak mengandung list atau grup nilai).**

Karena contoh table ini sudah memenuhi 1NF maka, tidak ada perubahan pada struktur tabel ini.

### Tahapan 2NF

Copy tabel yang memenuhi 1NF dan masukkan promt;
```
apakah table ini sudah memenuhi 2NF? jika belum apa yang perlu di perbaiki? berikan solusinya
```

Karena tabel ini belum memenuhi 2NF maka AI akan merespon seperti ini


Kolom pengarang dan penerbit tidak tergantung langsung pada id_buku, melainkan entitas tersendiri.

Lalu AI akan meberikan solusi;

Solusi AI:

Pecah tabel buku menjadi 3 tabel:

### 1. Tabel buku

### 2. Tabel pengarang

### 3. Tabel penerbit

```
| id_pengarang | nama_pengarang |
| ------------ | -------------- |
| 1            | Andrea Hirata  |
| 2            | Ahmad Fuadi    |
```

```
| id_penerbit | nama_penerbit   |
| ----------- | --------------- |
| 1           | Bentang Pustaka |
| 2           | Gramedia        |
```

### Tabel "Buku" setelah 2NF

```
| id_buku | judul           | id_pengarang | id_penerbit | tahun_terbit | stok |
| ------- | --------------- | ------------ | ----------- | ------------ | ---- |
| 1       | Laskar Pelangi  | 1            | 1           | 2005         | 10   |
| 2       | Sang Pemimpi    | 1            | 1           | 2006         | 8    |
| 3       | Negeri 5 Menara | 2            | 2           | 2009         | 5    |
```

### Tahapan 3NF

Syarat: Sudah 2NF, dan tidak ada kolom non-primer yang bergantung pada kolom non-primer lainnya (tidak ada transitive dependency).

Paste tabel yang memenuhi 2NF, dengan promt;
```
apakah table ini sudah memenuhi 3NF? jika belum apa yang perlu di perbaiki? berikan solusinya
```

**Analisi AI:**
Dalam tabel buku, semua kolom (judul, tahun_terbit, stok) langsung bergantung pada id_buku. Tidak ada ketergantungan transitif.

Maka tabel "Buku" sudah memenuhi 3NF


## Contoh SQL implementasi

```
CREATE TABLE pengarang (
    id_pengarang INT AUTO_INCREMENT PRIMARY KEY,
    nama_pengarang VARCHAR(100) NOT NULL
);

CREATE TABLE penerbit (
    id_penerbit INT AUTO_INCREMENT PRIMARY KEY,
    nama_penerbit VARCHAR(100) NOT NULL
);

CREATE TABLE buku (
    id_buku INT AUTO_INCREMENT PRIMARY KEY,
    judul VARCHAR(200) NOT NULL,
    id_pengarang INT,
    id_penerbit INT,
    tahun_terbit YEAR,
    stok INT DEFAULT 0,
    FOREIGN KEY (id_pengarang) REFERENCES pengarang(id_pengarang),
    FOREIGN KEY (id_penerbit) REFERENCES penerbit(id_penerbit)
);
```

### Kesimpulan

Setelah melalui proses normalisasi hingga bentuk Third Normal Form (3NF), tabel buku berhasil dipecah menjadi beberapa tabel terpisah yang merepresentasikan entitas berbeda, yaitu buku, pengarang, dan penerbit. Proses ini menghilangkan redundansi data, meningkatkan integritas, dan mempermudah pengelolaan informasi dalam database. Tabel buku kini hanya menyimpan informasi yang relevan secara langsung, sementara detail pengarang dan penerbit disimpan di tabel tersendiri dan dihubungkan melalui foreign key. Dengan struktur ini, database menjadi lebih efisien, konsisten, dan siap untuk dikembangkan lebih lanjut sesuai kebutuhan sistem informasi.










#### Dimas Yoga Irtanto 3C

<img width="900" height="900" alt="image" src="https://github.com/user-attachments/assets/e4d2907b-8f0b-4d11-a07a-9e05d31348b2" />















