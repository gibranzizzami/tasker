#Tugas Create Multimedia Client Server Kodi #

Pertama install Kodi dengan menggunakan kode ini

``` bash
lsb_release -d
```

```bash
apt update ; apt install kodi -y
```

![Screenshot](https://github.com/yuros-learncamp/Tugas-Multimedia-Client-Server-Kodi/blob/main/picture/Screenshot%20from%202025-11-14%2009-21-24.png)


masukan prompt berikut untuk memastikan kodi sudah terinstall dengan baik

```bash
kodi -version
```

Jika sudah, buka aplikasi Kodi, 

```bash
kodi
```

![Screenshot](https://github.com/yuros-learncamp/Tugas-Multimedia-Client-Server-Kodi/blob/main/picture/Screenshot%20from%202025-11-13%2017-18-40.png)

lalu masuk ke menu Setting dan pilih menu Services

![Screenshot](https://github.com/yuros-learncamp/Tugas-Multimedia-Client-Server-Kodi/blob/main/picture/Screenshot%20from%202025-11-13%2017-18-56.png)

Pada bagian UPnP / DLNA, aktifkan menu Enable UPnP Support dan Share My Libraries 

![Screenshot](https://github.com/yuros-learncamp/Tugas-Multimedia-Client-Server-Kodi/blob/main/picture/Screenshot%20from%202025-11-13%2017-19-16.png)

Masih di menu Services, pilih di SMB Client, lalu pada menu Minimum Protocol Version ubah menjadi SMBv1

![Screenshot](https://github.com/yuros-learncamp/Tugas-Multimedia-Client-Server-Kodi/blob/main/picture/Screenshot%20from%202025-11-13%2017-19-27.png)

Lalu install Samba sebagai penghubung antar device menggunakan prompt ini

```
sudo apt update
sudo apt install samba
```
edit samba config

```
sudo nano /etc/samba/smb.conf
```
lalu masukan di paling bawah

```
[Share]
path = /home/kautsar/Share
browseable = yes
read only = no
guest ok = yes
force user = kautsar
```

Simpan (CTRL + O, Enter) → keluar (CTRL + X)


Lalu siapkan file yang akan ditambahkan pada Kodi, seperti file musik yang diisi oleh musik musik yang akan dimasukkan ke menu Music dan file video yang akan dimasukkan pada menu Video

Buka kembali Kodi kembali, masukkan musik dengan mengklik menu Music,

![Screenshot](https://github.com/yuros-learncamp/Tugas-Multimedia-Client-Server-Kodi/blob/main/picture/Screenshot%20from%202025-11-14%2013-24-39.png)

pilih Files,

![Screenshot](https://github.com/yuros-learncamp/Tugas-Multimedia-Client-Server-Kodi/blob/main/picture/Screenshot%20from%202025-11-14%2013-24-39.png)

lalu pilih Add Music, 

![Screenshot](https://github.com/yuros-learncamp/Tugas-Multimedia-Client-Server-Kodi/blob/main/picture/Screenshot%20from%202025-11-14%2013-24-44.png)

lalu klik Browse untuk memilih file yang telah dibuat sebelumnya untuk memasukkan file tersebut ke dalam Kodi

![Screenshot](https://github.com/yuros-learncamp/Tugas-Multimedia-Client-Server-Kodi/blob/main/picture/Screenshot%20from%202025-11-14%2013-24-49.png)

Lakukan ini juga untuk memasukkan video, music video, dsb

Jika sudah, download VLC pada device ke dua. Pilih jaringan lokal yang tersedia, lalu pilih nama server Kodi pada device yang pertama dan kalian bisa melihat isi file yang terdapat pada server tersebut.

![Screenshot](https://github.com/yuros-learncamp/Tugas-Multimedia-Client-Server-Kodi/blob/main/picture/WhatsApp%20Image%202025-11-14%20at%2015.02.57.jpeg)


