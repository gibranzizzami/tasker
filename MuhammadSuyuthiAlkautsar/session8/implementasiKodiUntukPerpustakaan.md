masuk ke kodi
lalu masuk ke pengaturan
<img width="848" height="480" alt="Screenshot from 2026-01-06 19-41-57" src="https://github.com/user-attachments/assets/430e2b1f-f0f0-4f55-933a-fae635c4fb67" />
pilih setting
<img width="848" height="480" alt="Screenshot from 2026-01-06 19-42-02" src="https://github.com/user-attachments/assets/1611baf2-7416-48e1-aeef-daf72b4cb1d7" />
pilih add on lalu nyalakan uknown resource
<img width="848" height="480" alt="Screenshot from 2026-01-06 19-42-26" src="https://github.com/user-attachments/assets/7abe16e0-7f0f-42e7-9f87-78372f0b3b82" />

download file add on netflix di repo ini dalam bentuk zip
https://github.com/CastagnaIT/plugin.video.netflix/releases/tag/v1.23.5


kembali ke halaman utama lalu pilih add on


lalu pilih install add on from zip file
<img width="848" height="480" alt="Screenshot from 2026-01-06 19-44-09" src="https://github.com/user-attachments/assets/17332239-0d89-40ed-ac09-74850c9f8da0" />
install file zip, masukan file sesuai kalian menaruh file yang sudah di download
<img width="848" height="480" alt="Screenshot from 2026-01-06 19-44-52" src="https://github.com/user-attachments/assets/d21c2c24-ea16-49b2-ab60-5c6922dfd728" />

pilih my add ons lalu cari netflix dan install
<img width="848" height="480" alt="Screenshot from 2026-01-06 19-45-13" src="https://github.com/user-attachments/assets/f61604e5-585a-43d2-8fd9-3738d448dc6f" /><img width="848" height="480" alt="Screenshot from 2026-01-06 19-45-20" src="https://github.com/user-attachments/assets/083ca83d-6234-4011-a370-4b4c050e1f02" />

## Login Netflix di Kodi Menggunakan Authentication Key 

unduh file berikut

https://files.fm/f/yy82mr6pfe


Setelah selesai:
1. Ekstrak file ZIP
2. Masuk ke folder hasil ekstraksi

---

### Buka Terminal dan Masuk ke Folder

Buka **Terminal / Console**, lalu arahkan ke folder hasil ekstraksi:

```bash
cd NFAuthenticationKey_Linux
```

## Instal Dependensi Python

Script Authentication Key membutuhkan beberapa library Python tambahan.

Jalankan perintah berikut:
```
pip install pycryptodomex
pip install websocket-client
```
Jika sistem menggunakan Python 3 secara default:
```
pip3 install pycryptodomex
pip3 install websocket-client
```
## Menjalankan Script Authentication Key
```
python NFAuthenticationKey.py
```
atau
```
python3 NFAuthenticationKey.py
```
Langkah 5: Proses Autentikasi via Browser

Setelah script dijalankan:

Ikuti instruksi yang muncul di Terminal

Browser akan terbuka secara otomatis

Login ke akun Netflix melalui browser

Script akan menghasilkan file Authentication Key

File ini berfungsi sebagai pengganti login manual di Kodi.

Langkah 6: Login di Netflix Add-on Kodi

Buka Kodi

Masuk ke Netflix Add-on

Pilih metode login "Authentication Key"

Arahkan ke file Authentication Key yang telah dibuat

Login akan diproses secara otomatis

Setelah berhasil login, profil Netflix akan muncul di Kodi.

Langkah 7: Keamanan (Wajib)

Setelah login berhasil:

Hapus file Authentication Key

File ini bersifat sensitif dan tidak disarankan disimpan permanen

Langkah ini penting untuk menjaga keamanan akun Netflix.
