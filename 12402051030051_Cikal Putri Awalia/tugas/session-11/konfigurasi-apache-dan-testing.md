# 1. Generate Konfigurasi Apache
Jalankan:
```
sudo /opt/eprints3/bin/generate_apacheconf
```
File akan muncul di:
```
/opt/eprints3/etc/apache.conf
```
Copy ke Apache:
```
sudo cp /opt/eprints3/etc/apache.conf /etc/apache2/sites-available/eprints.conf
```
# 2. Enable Site + Restart Apache
Aktifkan site:
```
sudo a2ensite eprints.conf
```
Aktifkan module mod_perl (kalau belum):
```
sudo a2enmod perl
```
Restart Apache:
```
sudo systemctl restart apache2
```
Cek status:
```
sudo systemctl status apache2
```
# 3. Pastikan Hostname Terdaftar
Jika server tidak punya DNS internal:
```
sudo nano /etc/hosts
```
Tambahkan:
```
127.0.0.1   repo1.localdomain
```
Atau IP server:
```
192.168.x.x   repo1.localdomain
```
Test:
```
ping repo1.localdomain
```
# 4. Testing Akses Web
Buka di browser:
Halaman utama
```
http://repo1.localdomain/
```
Repository
```
http://repo1.localdomain/repositori
```
Jika halaman EPrints muncul → konfigurasi benar.
# 5. Membuat User Admin
```
sudo -u eprints /opt/eprints3/bin/epadmin create_user repositori
```
Isi email admin:
```
admin@repo1.localdomain
```
Role:
👉 pilih admin
 <img width="1600" height="900" alt="image" src="https://github.com/user-attachments/assets/7319506d-b84d-4e62-aaa9-bdd10df650d0" />
 <img width="1600" height="900" alt="image" src="https://github.com/user-attachments/assets/cc3b608b-42d3-4e8c-8625-579fee772895" />
<img width="1600" height="900" alt="image" src="https://github.com/user-attachments/assets/d54d45c4-ac7e-4f63-af13-ad3bb1379dbb" />
<img width="1600" height="900" alt="image" src="https://github.com/user-attachments/assets/f42671b4-f6d5-4205-9606-785ad078a62d" />
<img width="1600" height="900" alt="image" src="https://github.com/user-attachments/assets/77816ff6-4e08-4b65-b5f0-a36337bc06ee" />
