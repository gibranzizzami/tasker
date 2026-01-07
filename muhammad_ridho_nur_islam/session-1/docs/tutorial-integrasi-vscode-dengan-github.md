# Tutorial Integrasi VSCode dengan GitHub di Arch Linux

## Step 1: Masuk ke Dalam Terminal
Masuk ke dalam terminal laptop atau PC yang sudah terinstal OS Arch Linux

## Step 2: Membuat File SSH
Buat file ssh dari GitHub dengan menggunakan command

`ssh-keygen -t ed25519 -C "email GitHub"`
 
Lalu masukkan nama file yang ingin di integrasikan 
Setelah itu masukkan password jika file tersebut bersifat rahasia
Masukkan kembali password untuk verifikasi passwrod jika menambahkan password

<img src="/session-1/img/tutorial integrasi vscode dengan github/terminal1.jpeg" alt="integrasi" width="340px" height="214px">

## Step 3: Membuat Folder SSH
Lalu membuat folder untuk menyimpan file ssh dengan command

`mkdir .ssh`

lalu masuk ke document menggunakan command

`cd .ssh` 

<img src="/session-1/img/tutorial integrasi vscode dengan github/terminal2.jpeg" alt="integrasi" width="500px">

kemudian untuk mengetahui file tersebut ada atau tidak, menggunakan command 

`ls`

<img src="/session-1/img/tutorial integrasi vscode dengan github/terminal3.jpeg" alt="integrasi" width="500px">

lalu pindahkan file tersebut ke folder ssh menggunakan command

`mv "nama file" "nama folder" .ssh/`

## Step 4: Dapatkan Link untuk Key SSH
Agar mendapatkan link untuk mengintegrasikan VSCode ke GitHub gunakan command

`cat .ssh/"nama file yang ada .pub"`

<img src="/session-1/img/tutorial integrasi vscode dengan github/terminal4.jpeg" alt="integrasi" width="500px">

Lalu copy link yang muncul 

## Step 5: Memasukan link ke SSH Keys
Buka browser dan masuk ke web [github.com] (https://github.com/)
Klik profile lalu masuk ke opsi "settings"

<img src="/session-1/img/tutorial integrasi vscode dengan github/github1.jpeg" alt="integrasi" width="340px" height="214px">

Lalu pilih opsi "SSH and GPG keys" di bagian kiri layar tentang "Access"
Pilih opsi New SSH key pada bagian kanan layar 

<img src="/session-1/img/tutorial integrasi vscode dengan github/github2.jpeg" alt="integrasi" width="340px" height="214px">

Lalu isi semua opsi yang ada di "Add new SSH Key" dan masukkan link yang sudah di copy tadi ke opsi "Key"

<img src="/session-1/img/tutorial integrasi vscode dengan github/github3.jpeg" alt="integrasi" width="340px" height="214px">

Lalu pilih opsi "Add SSH key"

<img src="/session-1/img/tutorial integrasi vscode dengan github/github4.jpeg" alt="integrasi" width="340px" height="214px">

## Step 6: konfigurasi Git
Masuk ke terminal lagi lalu masukkan command 

`git config --global user.email "email git"`

`git config --global user.name "user git"`