# Tutorial Install MongoDB di Linux Mint
## Buka Situs Resmi MongoDB Untuk Melihat Instruksi Peng*install*an
Klil link ini: https://www.mongodb.com/docs/v7.0/tutorial/install-mongodb-on-ubuntu/
<img width="719" height="481" alt="image" src="https://github.com/user-attachments/assets/513200be-7738-4335-b7d4-316b6507bab9" />

## Step 1: Update Sistem Terlebih Dahulu
Ketik:
```
sudo apt update
```
<img width="644" height="156" alt="image" src="https://github.com/user-attachments/assets/9ba6467e-a08c-41bb-95b2-3a68bfd4367c" />

*Install* juga ` gnupg ` dan ` curl `   yang akan dibutuhkan untuk menambahkan *repository*.
```
sudo apt install gnupg curl -y
```
<img width="641" height="119" alt="image" src="https://github.com/user-attachments/assets/c89ef8fc-c123-44c2-a296-dcbc3cedcc8c" />

## Step 2: Download MongoDB dan Tambahkan MongoDB GPG Key
MongoDB menggunakan GPG key untuk memastikan paket yang kita unduh itu asli dan aman. Ketik:
```
    curl -fsSL https://www.mongodb.org/static/pgp/server-8.0.asc | \
    sudo gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg \
    --dearmor
```
<img width="889" height="109" alt="image" src="https://github.com/user-attachments/assets/4b755256-0fae-4bc9-8b34-b324b728d2d3" />

*Command* di atas akan mengunduh GPG key dan menyimpannya di *directory keyrings*.
## Step 3: Tambahkan MongoDB Repository
Ketik:
```
    echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] https://repo.mongodb.org/apt/ubuntu noble/mongodb-org/8.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-8.0.list
```
<img width="1168" height="53" alt="image" src="https://github.com/user-attachments/assets/23d1f3b1-3e5f-4441-b775-fb724abc5c58" />

Command di atas akan menambahkan baris baru ke file `source.list` yang mengarahkan sistem ke repository MongoDB versi 8.0
## Step 4: Instalasi MongoDB
Sekarang, kita bisa mulai instalasinya. Pertama, update lagi daftar *package* detelah menambahkan *repository* baru.
```
sudo apt update
```
![Untitled](https://github.com/user-attachments/assets/501e5026-4906-4ca1-8dc1-ff4117af2fcf)

Kemudian, jalankan *command* instalasi berikut:
```
    sudo apt install mongodb-org -y
```
![Untitled](https://github.com/user-attachments/assets/d2d6151f-0902-40c9-8fb5-fb670d3576d7)

*Command* tersebut akan meng-*install* semua *package* yang dibutuhkan untuk MongoDB, termasuk server dan *shell*nya. 
## Step 5: Kelola Layanan MongoDB
MongoDB tidak langsung aktif setelah di-install. Kita perlu mengaktifkan dan menjalankannya secara manusal.
* Mulai layanan MongoDB:
  ```
  sudo systemctl start mongod
  ```
* Pastikan layanan berjalan dengan baik:
  ```
  sudo systemctl status mongod
  ```
  Jika hasilnya menunjukkan **active (running)**,berarti sudah berhasil.
  
* Aktifkan MongoDB agar berjalan otomatis saat startup:
  ```
  sudo systemctl enable --now mongod
  ```
  <img width="1280" height="762" alt="image" src="https://github.com/user-attachments/assets/65746e8c-9959-470a-9648-f267562e9396" />

Selesai. MongoDB sudah terpasang dan siap digunakan.
