Dokumentasi ini menjelaskan langkah-langkah instalasi dan konfigurasi awal MariaDB di Debian 12.

# Pergi ke website mariadb
[ini linknya] (https://mariadb.org/download/)
<img width="1280" height="800" alt="Screenshot From 2025-09-21 16-33-01" src="https://github.com/user-attachments/assets/fdbc1428-8e90-4ad9-9a70-9efaf10291b7" />


# Instalasi MariaDB di Debian

---

## Prasyarat
- Debian 12
- Akses `sudo`
- Koneksi internet aktif

---

## Langkah Instalasi

### 1. Install dependensi
```bash
sudo apt-get install apt-transport-https curl

````
<img width="847" height="417" alt="Screenshot From 2025-09-21 21-28-59" src="https://github.com/user-attachments/assets/50b3fba1-fec5-41d7-a424-9116b9721554" />


### 2. Buat folder keyrings
```bash
sudo mkdir -p /etc/apt/keyrings
```

### 3. Download MariaDB Release Signing Key
```bash
sudo curl -o /etc/apt/keyrings/mariadb-keyring.pgp 'https://mariadb.org/mariadb_release_signing_key.pgp'
<img width="875" height="160" alt="image" src="https://github.com/user-attachments/assets/76a6748e-3eaa-4246-9cc7-9f96908c7076" />

```
<img width="875" height="160" alt="Screenshot From 2025-09-21 21-37-02" src="https://github.com/user-attachments/assets/7848f82a-bd30-46b8-b4ca-c102625ae88d" />

### 4. Tambahkan repository MariaDB ke sources.list.d
```bash
echo 'deb [signed-by=/etc/apt/keyrings/mariadb-keyring.pgp] https://mirror.mariadb.org/repo/11.4/debian bookworm main' | sudo vi /etc/apt/sources.list.d/mariadb.list
```

### 5. Update daftar paket dan install MariaDB
```bash
sudo apt update
sudo apt install mariadb-server -y
<img width="869" height="364" alt="image" src="https://github.com/user-attachments/assets/91a9d7df-9104-4825-b0fd-d068b231ae06" />
<img width="858" height="441" alt="image" src="https://github.com/user-attachments/assets/f1907acf-024e-46be-9719-72cdb33fee5e" />

```
<img width="869" height="364" alt="Screenshot From 2025-09-21 21-37-52" src="https://github.com/user-attachments/assets/2dabb525-278f-43cd-b292-23f3eb997db2" />
<img width="858" height="441" alt="Screenshot From 2025-09-21 21-38-58" src="https://github.com/user-attachments/assets/2d5e53e7-a992-41f0-9acf-1cc5832f5a63" />
