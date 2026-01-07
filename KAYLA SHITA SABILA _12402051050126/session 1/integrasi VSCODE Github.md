1. Siapkan Akun dan Aplikasi
Pastikan kamu sudah punya akun GitHub https://github.com
install Visual Studio Code (VS Code)
Install Git di laptop kamu
Unduh di https://git-scm.com/downloads
2. Login GitHub dari VS Code
 Buka VS Code
Klik ikon Source Control (gambar cabang di sidebar kiri)
 Klik Sign in to GitHub
VS Code akan membuka browser → login ke akun GitHub kamu → beri izin untuk akses
 Setelah berhasil, balik lagi ke VS Code — status login akan otomatis tersimpan.
 3. Buat Folder Proyek
Kamu bisa:
Buat folder di komputer kamu (misalnya projekku)
Lalu buka di VS Code dengan:
File → Open Folder → pilih folder tersebut
 Inisialisasi Git di Folder
Buka Terminal di VS Code (Ctrl + `)
 Ketik:
git init
Ini membuat folder kamu jadi repositori Git lokal
5. Tambahkan File ke Repository
Buat file baru, misalnya index.html atau main.py
Simpan
Tambahkan file ke Git:
git add .
Lalu commit:
git commit -m "First commit"
6. Hubungkan ke Repository GitHub
Buka GitHub → klik New Repository
Isi nama repo (misal: projekku)
 Jangan centang “Initialize with README”
 Klik Create Repository
GitHub akan menampilkan panduan seperti ini:
git remote add origin https://github.com/username/projekku.git
git branch -M main
git push -u origin main
Jalankan semua perintah itu di terminal VS Code kamu.
7. Sinkronisasi dan Update
Setelah terhubung:
Untuk menambah perubahan baru:
git add .
git commit -m "Update file"
git push
Untuk menarik update dari GitHub (kalau ada edit di website):
 git pull
 8. (Opsional) Gunakan Fitur GUI di VS Code
Kalau kamu nggak mau pakai terminal:
 Klik ikon Source Control
Akan muncul daftar file yang berubah
Klik tanda ✔ Commit
Klik … (More Actions) → pilih Push
VS Code akan otomatis kirim perubahan ke GitHub

Kalau kamu mau, aku bisa bantu buatkan contoh proyek kecil (misalnya folder berisi file index.html) dan tunjukkan step-by-step push ke GitHub langsung dari VS Code biar lebih mudah diikuti.
Mau aku buatkan contohnya?


ChatGPT can make mistakes. Check important info. See Cookie Preferences.
