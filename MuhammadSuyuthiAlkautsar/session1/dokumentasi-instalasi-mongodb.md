Dokumentasi ini menjelaskan langkah-langkah instalasi dan konfigurasi awal MongoDB di Debian 12.

# Pergi ke website mongodb
[ini linknya] (https://www.mongodb.com/docs/v7.0/tutorial/install-mongodb-on-debian/)
<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/a22dcc48-7e1d-46b0-b794-d01b461100c5" />



# Instalasi Mongodb di Debian

---

## Prasyarat
- Debian 12
- Akses `sudo`
- Koneksi internet aktif
- install gnupg dan curl

---

## Langkah Instalasi

### 1.  Import Public Key
```bash
sudo apt-get install gnupg curl
````
<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/bb52788a-5f24-4750-95d7-fffa7e97cf67" />


### 2. Import MongoDB public GPG key:
```bash
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | \
   sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg \
   --dearmor

```
<img width="776" height="93" alt="Screenshot from 2025-09-22 02-49-42" src="https://github.com/user-attachments/assets/6c45b11b-4259-4530-a1d0-8366ec2650f3" />

### 3. Tambahkan Repository MongoDB
```bash
echo "deb [ signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] http://repo.mongodb.org/apt/debian bookworm/mongodb-org/7.0 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

```
<img width="776" height="107" alt="Screenshot from 2025-09-22 02-49-51" src="https://github.com/user-attachments/assets/a38372b4-3cc7-44b7-94cf-3165cf1472c2" />

### 4. Update Package Database
```bash
sudo apt-get update
```
<img width="776" height="275" alt="Screenshot from 2025-09-22 02-50-02" src="https://github.com/user-attachments/assets/9c6bbc72-5e25-4c50-8298-00f30b4fa086" />

### 5. Install MongoDB Community Edition
```bash
sudo apt-get install -y mongodb-org

```
<img width="799" height="568" alt="Screenshot from 2025-09-22 02-50-14" src="https://github.com/user-attachments/assets/ddbb9a91-c4f4-485a-86c4-1634db3489dd" />

## Jalankan MongoDB

### Start Mongodb
```bash
sudo systemctl start mongod

```

### Cek Status Mongodb
```bash
sudo systemctl status mongod

```
<img width="774" height="216" alt="Screenshot from 2025-09-22 02-51-12" src="https://github.com/user-attachments/assets/639dde8b-cd5c-4852-83c9-5215fcee0558" />

### enable saat boot
```bash
sudo systemctl enable mongod

```

## Jalankan Mongodb
```bash
sudo systemctl start mongod

```
<img width="795" height="564" alt="Screenshot from 2025-09-22 02-52-36" src="https://github.com/user-attachments/assets/612fbb75-e502-4138-86e2-376cfd05a078" />

