Tahapan-Tahapan Installasi MongoDB 
1. Buka Browser yang biasa Anda gunakan seperti Mozilla Firefox, Google Chrome atau Microsoft Edge

2. Lalu cari dengan kata kunci "download MongoDB for Debian" atau bisa menggunakan link https://www.mongodb.com/docs/manual/administration/install-community/?linux-distribution=debian&linux-package=default&operating-system=linux&search-linux=with-search-linux

Lalu scroll ke bawah hingga ada tulisan "Install MongoDB Community Edition"

Lalu masukkan kode-kode yang tertera di link tersebut

sudo apt-get install gnupg curl

curl -fsSL https://www.mongodb.org/static/pgp/server-8.0.asc | \

   sudo gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg \
   --dearmor
  
   echo "deb [ signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] http://repo.mongodb.org/apt/debian bookworm/mongodb-org/8.0 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-8.0.list

   sudo apt-get update
   
   sudo apt-get install -y mongodb-org
   
   Lalu masukkan kode systemctl status mongod untuk mengecek status MongoDB. Jika pada kolom Active terdapat tulisan "Inactive" maka itu tanda bahwa MongoDB harus dijalan dengan menggunakan kode systemctl start mongod
   
   Setelah itu akan muncul gambar ini dan kalian hanya perlu memasukkan password kalian. 
   
   Setelah itu ketik kode systemctl status MongoDB, dan jika di kolom Active hasilnya adalah Running, maka MongoDB telah bisa digunakan

   <img width="917" height="266" alt="Step_MongoDB_11" src="https://github.com/user-attachments/assets/ff5598b2-63a0-4fd4-b894-885cd099b776" />
