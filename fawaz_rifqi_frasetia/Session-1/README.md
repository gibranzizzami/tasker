# Tugas-1 (Tugas Pak Al)

## Deskripsi
Repositori ini berisi dokumentasi/tutorial step-by-step untuk beberapa instalasi software dan penggunaan GitHub:
- Install MongoDB
- Install MariaDB
- Install Visual Studio Code dan integrasi dengan GitHub
- Membuat akun GitHub

Semua screenshot yang dipakai ada di folder `tugas 1/`.

---

## Daftar Isi
1. Install MongoDB  
2. Install MariaDB  
3. Install VSCode & Integrasi GitHub  
4. Membuat Akun GitHub  
5. Menambahkan README ini ke repo

---

## 1. Install MongoDB (step-by-step)

> Pilih section sesuai distro Linux kamu.

### Ubuntu / Debian (contoh umum)
1. Update package list:
   ```bash
   sudo apt update
   ```
2. Install MongoDB (simple install dari repo distro):
   ```bash
   sudo apt install -y mongodb
   ```
3. Start & enable service:
   ```bash
   sudo systemctl start mongodb
   sudo systemctl enable mongodb
   ```
4. Cek status:
   ```bash
   sudo systemctl status mongodb
   ```
5. Test koneksi mongo shell (jika tersedia):
   ```bash
   mongo --eval 'db.runCommand({ ping: 1 })'
   ```

### Arch Linux (contoh)
1. Update system & install:
   ```bash
   sudo pacman -Syu
   sudo pacman -S mongodb
   ```
2. Start & enable service (Arch biasanya pakai `mongod`):
   ```bash
   sudo systemctl start mongodb   # atau sudo systemctl start mongod
   sudo systemctl enable mongodb  # atau sudo systemctl enable mongod
   ```
3. Cek status:
   ```bash
   sudo systemctl status mongodb  # atau sudo systemctl status mongod
   ```

### Screenshot (contoh langkah instalasi / verifikasi)
![MongoDB Step 1](tugas%201/Screenshot%202024-09-16%20220433.png)  
![MongoDB Step 2](tugas%201/Screenshot%202024-09-16%20220446.png)

---

## 2. Install MariaDB (step-by-step)

### Ubuntu / Debian
1. Update:
   ```bash
   sudo apt update
   ```
2. Install MariaDB server:
   ```bash
   sudo apt install -y mariadb-server
   ```
3. Start & enable:
   ```bash
   sudo systemctl start mariadb
   sudo systemctl enable mariadb
   ```
4. Amankan instalasi (jawab prompt sesuai kebutuhan: root password, remove anonymous, dsb):
   ```bash
   sudo mysql_secure_installation
   ```
5. Cek status:
   ```bash
   sudo systemctl status mariadb
   ```
6. Login (contoh):
   ```bash
   sudo mysql -u root -p
   ```

### Arch Linux
1. Update & install:
   ```bash
   sudo pacman -Syu
   sudo pacman -S mariadb
   ```
2. Inisialisasi (Arch):
   ```bash
   sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
   ```
3. Start & enable:
   ```bash
   sudo systemctl start mariadb
   sudo systemctl enable mariadb
   ```
4. Amankan:
   ```bash
   sudo mysql_secure_installation
   ```

### Screenshot (contoh langkah instalasi MariaDB)
![MariaDB Step 1](tugas%201/Screenshot%202024-09-16%20220504.png)  
![MariaDB Step 2](tugas%201/Screenshot%202024-09-16%20220515.png)

---

## 3. Install Visual Studio Code & Integrasi GitHub (step-by-step)

### Ubuntu / Debian (instal official .deb repository)
1. Pasang dependensi & import key:
   ```bash
   sudo apt install -y wget gpg
   wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
   sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
   ```
2. Tambah repo:
   ```bash
   sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
   ```
3. Install:
   ```bash
   sudo apt update
   sudo apt install -y code
   ```

### Arch Linux
1. Install dari community (jika tersedia) atau AUR:
   ```bash
   sudo pacman -Syu
   sudo pacman -S code          # jika tersedia di repo community
   # atau pakai AUR helper: yay -S visual-studio-code-bin
   ```

### Integrasi GitHub di VSCode
1. Buka VSCode.  
2. Install extension: **GitHub Pull Requests and Issues** (dari Extensions view).  
3. Klik Sign in / Account icon → Sign in to GitHub, ikuti alur browser untuk otorisasi.  
4. Setelah login, extension akan menghubungkan VSCode ke akun GitHub kamu (push/pull, PR, issue).

### Screenshot (VSCode & integrasi)
![VSCode Step 1](tugas%201/Screenshot%202024-09-16%20220538.png)  
![VSCode Step 2](tugas%201/Screenshot%202024-09-16%20220550.png)

---

## 4. Membuat Akun GitHub (step-by-step)
1. Buka: https://github.com  
2. Klik **Sign up**.  
3. Isi:
   - Email address
   - Create a password
   - Choose a username
4. Ikuti verifikasi (captcha/email).  
5. Verifikasi email kamu (cek inbox).  
6. Setelah verifikasi, login dan set up profil (opsional).

### Screenshot (pendaftaran)
![GitHub SignUp Step 1](tugas%201/Screenshot%202024-09-16%20220610.png)  
![GitHub SignUp Step 2](tugas%201/Screenshot%202024-09-16%20220622.png)

---

## 5. Cara menambahkan README ini ke repo (cepat)
1. Pastikan kamu berada di root repo lokal:
   ```bash
   git clone https://github.com/Frasetiaa/Tugas-1.git
   cd Tugas-1
   ```
2. Buat/replace `README.md` dengan isi file ini (paste lalu simpan).  
3. Commit & push:
   ```bash
   git add README.md
   git commit -m "Add step-by-step README with screenshots"
   git push origin main
   ```
   *(Ganti `main` dengan nama branch default repo-mu jika beda.)*

---

## Catatan penting
- Pastikan nama & path screenshot persis sama (sensitive ke huruf & spasi). Di README ini saya pakai path dengan encoding `tugas%201/...` agar safe ketika ada spasi di folder.  
- Jika GitHub tidak menampilkan gambar karena path, coba gunakan path tanpa encoding atau upload ulang gambar ke folder tanpa spasi (mis. `tugas-1/screenshot.png`).  
- Jika kamu pakai distro selain Debian/Ubuntu/Arch, sesuaikan package manager & nama paket.

---
