# Dokumentasi Integrasi Visual Studio Code dengan GitHub

## 1. Prasyarat
Sebelum memulai integrasi, pastikan Anda telah memenuhi prasyarat berikut:
-   **Akun GitHub:** Sudah memiliki akun di [github.com](https://github.com).
-   **Visual Studio Code:** Terinstal pada sistem operasi Debian.
-   **Akses Internet:** Terhubung ke internet untuk autentikasi dan sinkronisasi.

## 2. Langkah-Langkah Integrasi

### A. Instalasi Git di Debian
VS Code memerlukan Git untuk berkomunikasi dengan GitHub. Install Git menggunakan terminal:
```bash
sudo apt update && sudo apt install git
```
**Verifikasi Instalasi:**
```bash
git --version
# Output yang diharapkan: git version 2.30.2 (atau yang lebih baru)
```
**Konfigurasi Awal Git:**
```bash
git config --global user.name "Nama Anda"
git config --global user.email "email.anda@example.com"
```
<img width="473" height="611" alt="Screenshot from 2025-09-22 15-08-30" src="https://github.com/user-attachments/assets/92e8c356-f924-4ef9-977b-97e17356a1dd" />

### B. Instalasi Ekstensi GitHub di VS Code
1.  Buka VS Code.
2.  Klik ikon **Extensions** pada sidebar kiri (atau tekan `Ctrl+Shift+X`).
3.  Gunakan kata kunci pencarian berikut untuk menemukan ekstensi resmi:
    -   `@id:github.vscode-pull-request-github` (Paling Akurat)
    -   `@pub:GitHub`
4.  Temukan ekstensi **"GitHub"** yang diterbitkan oleh **GitHub**.
5.  Klik **Install**.

<img width="799" height="600" alt="Screenshot from 2025-09-22 15-16-36" src="https://github.com/user-attachments/assets/4285335e-381d-4db0-9ac3-7a36ef2f4d11" />

### C. Autentikasi Akun GitHub
1.  Buka **Command Palette** di VS Code (`Ctrl+Shift+P`).
2.  Ketik dan pilih perintah: **`GitHub: Sign In`**.
3.  Akan muncul jendela pop-up yang meminta izin untuk membuka browser. Klik **"Allow"**.
4.  Di browser, ikuti proses login dan otorisasi akun GitHub Anda.
5.  Jika berhasil, VS Code akan menampilkan pemberitahuan **"GitHub authentication successful"**.
<img width="800" height="600" alt="Screenshot from 2025-09-22 15-19-06" src="https://github.com/user-attachments/assets/4a68c58a-cc89-43b2-b720-74544540f876" />

### D. Workflow Inti: Klon, Commit, Push, dan Pull

#### i. Klon Repositori yang Sudah Ada
1.  Buka **Command Palette** (`Ctrl+Shift+P`).
2.  Pilih **`Git: Clone`**.
3.  Masukkan URL repositori GitHub (contoh: `https://github.com/nama-user/nama-repo.git`).
4.  Pilih lokasi penyimpanan lokal.
<img width="800" height="600" alt="Screenshot from 2025-09-22 15-22-35" src="https://github.com/user-attachments/assets/b1eba362-3c8c-4127-bfa5-9a9598c1eeb1" />

#### ii. Buat Repositori Baru dan Push
1.  Buat folder proyek baru dan buka di VS Code.
2.  Buka tab **Source Control** (`Ctrl+Shift+G`).
3.  Klik **Initialize Repository**.
4.  Buat file baru atau ubah file yang ada. Perubahan akan muncul di bawah "Changes".
5.  Klik ikon **`+`** di samping file untuk **stage changes**.
6.  Ketik pesan commit pada kolom input (contoh: "Initial commit").
7.  Klik **✓** untuk melakukan commit.
8.  **Publish Branch to GitHub:** Klik tombol **...** > **Publish Branch**. VS Code akan membuat repositori baru (publik atau privat) di akun GitHub Anda dan melakukan push.

#### iii. Push Perubahan ke GitHub
Setelah melakukan commit:
1.  Klik tombol **Sync Changes** (ikon panah melingkar) yang muncul di bottom bar.
2.  Atau, klik tombol **...** pada tab Source Control dan pilih **Push**.

#### iv. Pull Perubahan dari GitHub
Untuk mendapatkan update terbaru dari rekan tim:
1.  Klik tombol **...** pada tab Source Control.
2.  Pilih **Pull**.
