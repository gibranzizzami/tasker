 Instalasi MongoDB 8 di Linux

Pertama, lakukan pembaruan sistem agar semua paket terbaru dengan menjalankan perintah sudo apt update & sudo apt upgrade -y. Langkah ini penting supaya instalasi MongoDB berjalan lancar.

Kedua, tambahkan GPG Key untuk MongoDB 8 menggunakan perintah curl -fsSL https://pgp.mongodb.com/server-8.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg --dearmor. Perintah ini berfungsi agar sistem dapat mengenali sumber repository MongoDB sebagai sumber yang tepercaya.

Ketiga, tambahkan repository resmi MongoDB 8 ke dalam sistem dengan menjalankan perintah echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] https://repo.mongodb.org/apt/ubuntu noble/mongodb-org/8.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-8.0.list. Dengan menambahkan repository ini, sistem dapat mengunduh MongoDB langsung dari sumber resmi.

Keempat, setelah repository berhasil ditambahkan, jalankan kembali sudo apt update untuk memuat daftar paket terbaru. Kemudian instal MongoDB versi 8 dengan perintah sudo apt install -y mongodb-org.

Kelima, setelah instalasi selesai, jalankan layanan MongoDB menggunakan sudo systemctl start mongod. Jika layanan berhasil dijalankan, MongoDB sudah bisa digunakan di sistem Linux.

Keenam, atur agar MongoDB otomatis berjalan setiap kali sistem dinyalakan dengan perintah sudo systemctl enable mongod. Hal ini akan memastikan MongoDB tetap aktif tanpa perlu dijalankan manual.

Ketujuh, periksa status layanan MongoDB dengan sudo systemctl status mongod. Jika status menunjukkan “active (running)”, berarti instalasi MongoDB 8 berhasil dan sudah siap digunakan.
