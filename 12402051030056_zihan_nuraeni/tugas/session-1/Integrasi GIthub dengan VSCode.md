# Integrasi Akun GitHub dengan Visual Code 
---
Berikut adalah cara integrasi akun GitHub dengan Visual Code. 

1. Buka terminal 
2. Ketik `mkdir .ssh` lalu enter
3. Ketik `cd .ssh` lalu enter
4. Ketik `ssh-keygen -t ed25519 -c "youremail.com"` lalu enter
5. Ketik `ssh-keygen -t rsa -b 4096 -c "youremail.com"` lalu enter
![tahap 1](https://github.com/zihannrae/tasker/blob/10b0aff6fc28a78d2b7efd1b83f4ec885b528c9f/12402051030056_zihan_nuraeni/tugas/session-1/img/intgrasissh.jpeg)
6. Ketik `cat ~/.ssh/id ed25519.pub` lalu enter
7. Ketik `ls` lalu enter
8. Ketik `cat example.pub` lalu enter
![tahap2](/https://github.com/zihannrae/tasker/blob/10b0aff6fc28a78d2b7efd1b83f4ec885b528c9f/12402051030056_zihan_nuraeni/tugas/session-1/img/integrasicat.jpeg)
9. Copy SSH Keys yang muncul 
![tahap3](https://github.com/zihannrae/tasker/blob/10b0aff6fc28a78d2b7efd1b83f4ec885b528c9f/12402051030056_zihan_nuraeni/tugas/session-1/img/integrasi%20selesai.jpeg)
10. Buka halaman GitHub
11. Klik profil di pojok kanan atas lalu pilih opsi **Settings**
12. Pilih opsi **SSH and GPG keys**
13. Klik **New SSH keys**
14. Masukkan Title SSH Keys dan tempelkan SSH keys yang sudah di-*copy* sebelumnya
15. Klik **Add SSH keys**
![Memasukkan di GitHub](/https://github.com/zihannrae/tasker/blob/10b0aff6fc28a78d2b7efd1b83f4ec885b528c9f/12402051030056_zihan_nuraeni/tugas/session-1/img/di%20github.jpeg)
16. Akun GitHub sudah selesai terintegrasi dengan Visual Code
