## Install Eprint docker
#### 1. untuk memperbaharui sistem arch-linux sekaligus meng-install docker untuk e-prints
```
sudo pacman -Syu docker
```
#### 2. plugin untuk menjalankan docker
```
sudo pacman -S docker-compose
```
#### 3. untuk mengaktifkan docker
```
sudo systemctl enable docker
sudo systemctl start docker
```
#### 4. lalu buka https://github.com/DTLudlow/eprints-3.4.4-docker
Dan clone repository tersebut dengan mengklik tombol hijau yang bertuliskan "code" lalu copy yang (HTTPS) setelah itu masuk kedalam terminal
```
git clone https://github.com/DTLudlow/eprints-3.4.4-docker /eprints
```
#### 5. lalu masuk kedalam folder e-prints
```
cd /eprints
```
#### 6. lalu membuat container docker
```
docker compose up --build -d
```
Proses ini akan memakan waktu karena docker membuat volume dan mengambil semua yang dibutuhkan EPrints untuk berjalan.

#### 7. Untuk memastikan EPrints telah dikonfigurasi dengan benar, Pastikan prompt terminal ada di folder eprints dengan cara buka kontainer docker di terminal lalu masukkan:
```
docker compose exec eprintshttpd sh
```
#### 8. lalu jalankan 
```
chown -R -c eprints.eprints /usr/share/eprints/
```
#### 9. untuk memastikan bahwa pengguna eprints memiliki semua file di direktori eprints.
##### lalu beralih ke pengguna eprints dengan
```
su eprints
```
#### 10. setelah itu Jalankan
```
/usr/share/eprints/bin/generate_static pub --prune
```
untuk memastikan tidak ada tautan yang rusak.

#### 11. lalu jalankan
```
/usr/share/eprints/bin/epadmin update pub
```
untuk memastikan pengguna admin ditambahkan ke database
#### 12. untuk memuat ulang konfigurasi arsip
```
/usr/share/eprints/bin/epadmin reload pub
```
#### 13. lalu ketik 
```
exit 
```
untuk beralih ke pengguna root
#### 14. Jalankan untuk memulai ulang server web
```
httpd -k restart
```
### memulai sesi 

#### 15. Periksa apakah Docker berjalan dengan baik menggunakan
```
service docker status
```
#### 16. Navigasi ke folder tempat eprints diinstal
```
cd /eprints
```
#### 17. Jalankan eprint dengan
```
docker compose up -d
```
lalu buka jendela browser dan buka http://localhost untuk melihat antarmuka front-end.

#### 18. pengguna bawaan
untuk masuk ke admin gunakan pengguna bawaan yaitu:
```
user: admin
password: admin123
```
#### 19. mengakhiri sesi
Tutup koneksi ke kontainer Docker dengan mengetik
```
exit
exit
```
dua kali (pertama untuk keluar dari pengguna eprints, kedua untuk keluar dari pengguna root)
#### 20. lalu keluar dari aplikasi EPrints dengan
```
docker compose down
```

