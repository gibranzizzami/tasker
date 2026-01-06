# 1. Instalasi perlbrew (Jika belum terpasang)
Jalankan:
```
sudo apt install perlbrew -y
```
Inisialisasi:
```
perlbrew init
```
Tambahkan ke ~/.bashrc:
```
source ~/perl5/perlbrew/etc/bashrc
```
Reload:
```
source ~/.bashrc
```
# 2. Install versi Perl kompatibel untuk EPrints

Versi yang paling stabil untuk EPrints adalah Perl 5.32.1
Install:
```
perlbrew install perl-5.32.1
```
Aktifkan:
```
perlbrew switch perl-5.32.1
```
Cek:
```
perl -v
```
Jika output menunjukkan:
```
perl 5, version 32, subversion 1
```
berarti sudah berhasil.

# 3. Tambah library path EPrints ke environment
Tambahkan ke .bashrc user eprints:
```
export PATH=$PATH:/opt/eprints3/bin
export PERL5LIB=/opt/eprints3/perl_lib
```
Reload:
```
source ~/.bashrc
```
# 4. Jalankan Epadmin
```
/opt/eprints3/bin/epadmin
```
Jika muncul daftar perintah → Perl fix berhasil.

# 5. Membuat Repository Baru
Contoh nama repository: repo1
Jalankan:
```
sudo -u eprints /opt/eprints3/bin/epadmin create repositori
```
Wizard akan menanyakan:
- Hostname
- Port
- Path
- Admin email
- URL base

Contoh:
```
Hostname: repo1.localdomain
Port: 80
Path: /repositori
Admin email: admin@repo1.localdomain
```
Jika sukses, folder baru akan muncul:
`/opt/eprints3/archives/repositori/`

<img width="1600" height="900" alt="image" src="https://github.com/user-attachments/assets/f1103fa8-5988-447e-989a-eb01f688e3b6" />
<img width="1600" height="900" alt="image" src="https://github.com/user-attachments/assets/973fc411-ef91-4bc8-a591-659a6410c5e5" />
<img width="1600" height="900" alt="image" src="https://github.com/user-attachments/assets/562ed2aa-f16d-4db3-9ec1-23bffecc1503" />
<img width="1600" height="900" alt="image" src="https://github.com/user-attachments/assets/f303b462-a47a-4093-b202-a8126c559b60" />
