
# Panduan Instalasi OpenDocMan (Linux – Ubuntu/Debian)

## 1. Persiapan Sistem

Update sistem dan install seluruh dependensi:

```bash
sudo apt update
sudo apt install apache2 mysql-server php php-mysql php-gd php-xml php-mbstring php-zip unzip wget -y
```



## 2. Download OpenDocMan

```bash
cd /tmp
wget https://github.com/opendocman/opendocman/releases/download/v1.5.1/opendocman-1.5.1.zip
```



## 3. Ekstrak ke Direktori Web

```bash
sudo unzip opendocman-1.5.1.zip -d /var/www/html/
sudo mv /var/www/html/opendocman-1.5.1 /var/www/html/opendocman
```

---

## 4. Atur Permission

```bash
sudo chown -R www-data:www-data /var/www/html/opendocman
sudo chmod -R 755 /var/www/html/opendocman
```

---

## 5. Membuat Database (MySQL)

Masuk ke MySQL:

```bash
sudo mysql -u root -p
```

Lalu jalankan:

```sql
CREATE DATABASE opendocman;
CREATE USER 'odm_user'@'localhost' IDENTIFIED BY 'password_anda';
GRANT ALL PRIVILEGES ON opendocman.* TO 'odm_user'@'localhost';
FLUSH PRIVILEGES;
EXIT;
```

---

## 6. Restart Apache

```bash
sudo systemctl restart apache2
```

---

## 7. Instalasi Melalui Browser

Buka browser dan akses:

```
http://localhost/opendocman/install/
```

Isi konfigurasi sesuai data database
Contoh:
* **Database name:** `opendocman`
* **Database user:** `odm_user`
* **Database password:** password yang tadi dibuat

Ikuti wizard hingga selesai.

---

## 8. Hapus Folder Instalasi

```bash
sudo rm -rf /var/www/html/opendocman/install
```



## 9. Login ke OpenDocMan

Akses:

```
http://localhost/opendocman/
```

Akun default:
Contoh:
* **Username:** `admin`
* **Password:** `admin`



### Hasil Instalasi Berhasil:
<img width="907" height="922" alt="image" src="https://github.com/user-attachments/assets/e79af245-411d-41d8-9676-a3b1f7711058" />
<img width="798" height="869" alt="image" src="https://github.com/user-attachments/assets/5dae99b7-b47e-4f8b-a24e-88835e246aa0" />
