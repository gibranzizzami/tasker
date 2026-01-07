# Pemanfaatan AI untuk Normalisasi Database #

## Tujuan
Menunjukkan bagaimana AI dapat digunakan untuk membantu proses **normalisasi database** dari tabel mentah (unnormalized) menjadi bentuk N1,N2, dan N3.

## Persiapan 

### Perangkat dan software:

1.  **OS:** Arch Linux
2.  **Database:** MariaDB 
3.  **Editor:** VSCodium (menulis sql dan md)
4.  **AI Tool:** ChatGPT

### Langkah Setup MariaDB di Arch Linux:

```bash
sudo pacman -S mariadb
sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo systemctl enable mariadb.service
sudo systemctl start mariadb.service
sudo mysql_secure_installation
```

### Masuk ke MariaDB:

```bash
mariadb -u root -p
```

## Langkah 1: Membuat Data Awal atau Tabel Mentah yang Belum Ternormalisasi

Langkah pertama adalah membuat satu tabel mentah (sales_raw) yang berisi data pesanan.

Tabel ini masih mencampur data pelanggan, produk dan penjual dalam satu tempat.

```sql
CREATE DATABASE ai_normalisasi;
USE ai_normalisasi;

CREATE TABLE sales_raw (
  order_id INT,
  customer_name VARCHAR(100),
  product_name VARCHAR(100),
  quantity INT,
  order_date DATE,
  salesperson_name VARCHAR(100)
);


INSERT INTO sales_raw (order_id, customer_name, product_name, quantity, order_date, salesperson_name)
VALUES
(1, 'Andi', 'Laptop', 1, '2024-07-12', 'Rina'),
(1, 'Andi', 'Mouse', 2, '2024-07-12', 'Rina'),
(2, 'Budi', 'Keyboard', 1, '2024-07-13', 'Rina'),
(3, 'Citra', 'Laptop', 1, '2024-07-14', 'Dedi'),
(3, 'Citra', 'Keyboard', 1, '2024-07-14', 'Dedi');

```

## Langkah 2: Normalisasi ke 1NF (First Normal Form)

Buka browser lalu ketik ChatGPT dan masuk ke website nya, setelah itu gunakan prome:
    `"Normalisasikan tabel atau data berikut (masukkan data mentah tadi) kedalam 1NF (First Normal Form)."`

Analisis AI:

1. AI menemukan bahwa `order_id` tidak unik karena satu pesanan memiliki banyak produk.

2. AI menyarankan untuk menggunakan **kunci gabungan (order_id, product_name)** atau membuat tabel baru untuk item pesanan.

**Hasil:**

    "Dalam 1NF, data produk dipecah per baris, dan setiap baris mewakili satu item dalam pesanan, karena dataset kamu sudah dalam format “satu produk per baris”, maka 1NF secara praktis sudah terpenuhi — tetapi aku akan menandai bahwa perlu ada identifikasi entitas terpisah untuk pelanggan dan penjual."

## Langkah 3: Normalisasi ke 2NF (Second Normal Form)

Setelah itu gunakan prome:
    `"Normalisasikan tabel tadi kedalam 2NF (Second Normal Form)."`

**Analisis AI:**

1. Dari hasil 1NF, AI mengenali bahwa `customer_name`, `order_date`, dan `salesperson_name` hanya bergantung pada `order_id`, **bukan** pada kombinasi `(order_id, product_name)`.

2. AI menyarankan pemisahan tabel menjadi dua bagian:

    A. `orders` → menyimpan data umum pesanan (order_id, tanggal, pelanggan, penjual)

    B. `order_items` → menyimpan detail produk dan jumlahnya per pesanan

Langkah selanjutnya adalah kembali ke MariaDB lalu implementasikan rekomendasi dari AI

```sql
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  order_date DATE,
  customer_name VARCHAR(100),
  salesperson_name VARCHAR(100)
);

CREATE TABLE order_items (
  order_item_id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  product_name VARCHAR(100),
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
```
Dengan pemisah ini, setiap kolom sudah bergantung **pada kunci utamanya sendiri**, dan tidak ada lagi ketergantungan parsial.

## Langkah 4: Normalisasi ke 3NF (Third Normal Form)

Langkah selanjutnya adalah normalisasikan data yang tadi sudah di buat, ke 3NF (Third Normal Form).

Masuk ke website ChatGPT lagi lalu gunakan prome:
    `"Setelah data atau tabel tadi di normalisasikan ke 2NF, lanjut normalisasikan data atau tabel tadi ke 3NF (Third Normal Form)."`

**Analisis AI:**

1. AI mendeteksi bahwa `cutomer_name` dan `salesperson_name` adalah **entitas tersendiri**, karena data mereka bisa muncul di banyak pesanan.

2. AI menyarankan untuk membuat tabel khusus:

    A. `customers`

    B. `salespersons`

    C. Lalu mengganti nama mereka di tabel `orders` menjadi foreign key (`customer_id`, `salesperson_id`).

Langkah selanjutnya adalah kembali ke MariaDB lalu implementasikan rekomendasi dari AI

```sql
CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(100)
);

CREATE TABLE salespersons (
  salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
  salesperson_name VARCHAR(100)
);
```
Lalu hapus tabel `orders` dan `order_items` karna akan di ubah isi dari tablenya

```sql
DROP TABLE order_items;
DROP TABLE orders;
```

Selanjutnya membuat tabel `orders` dan `order_items` dengan Query:

```sql
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  order_date DATE,
  customer_id INT,
  salesperson_id INT,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE,
  FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id) ON DELETE CASCADE
);

CREATE TABLE order_items (
  order_item_id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  product_name VARCHAR(100),
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE
);
```

## Langkah 5: Mengisi Data dari Dataset Awal

Langkah selanjutnya gunakan prome:
    `"Bantu aku menyusun ulang data agar sesuai dengan skema 3NF."`

Lalu kembali lagi ke MariaDB dan implementasikan rekomendasi dari AI

```sql 
INSERT INTO customers (customer_name)
VALUES ('Andi'), ('Budi'), ('Citra');

INSERT INTO salespersons (salesperson_name)
VALUES ('Rina'), ('Dedi');
```

<img src="/session-3/img/contoh2.png" alt="customers and salespersons" width="340px" height="214px">

```sql
INSERT INTO orders (order_id, order_date, customer_id, salesperson_id)
VALUES
(1, '2024-07-12', 1, 1),
(2, '2024-07-13', 2, 1),
(3, '2024-07-14', 3, 2);

INSERT INTO order_items (order_id, product_name, quantity)
VALUES
(1, 'Laptop', 1),
(1, 'Mouse', 2),
(2, 'Keyboard', 1),
(3, 'Laptop', 1),
(3, 'Keyboard', 1);
```
<img src="/session-3/img/contoh3.png" alt="orders and order_items" width="340px" height="214px">

## Langkah 6: Hasil Akhir dan Analisis AI

Kamu bisa menggunakan SQL berikut untuk melihat hasilnya:

```sql
SELECT * FROM customers;
SELECT * FROM salespersons;
SELECT * FROM orders;
SELECT * FROM orders_items;
```

**Setelah semua tahap:**

1. Tabel `sales_raw` sudah terurai jadi 4 tabel relasional:
    A. customers
    B. salespersons
    C. orders
    D. order_items

2. Setiap entitas memiliki tanggung jawab tunggal.

3. Tidak ada redundansi data, dan relasi antar entitas dijaga lewat foreign key.

### Kesimpulan

AI berperan bukan hanya sebagai alat bantu penulis kode SQL, tapi juga sebagai asisten analisis logika relasional samapai mendeteksi anomali, merancang skema ideal, dan mengoptimalkan relasi antar tabel secara bertahap dari 1NF hingga 3NF.



<img src="/session-3/img/absensi 1.jpeg" alt="absensi1" width="100px" height="214px">

<img src="/session-3/img/absensi 2.jpeg" alt="absensi2" width="100px" height="214px">