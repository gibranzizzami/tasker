integrasi

## 1. Buka Visual Code Studio
## 2. lalu buka terminal di vscode
<img width="1366" height="768" alt="Screenshot From 2025-09-17 19-38-06" src="https://github.com/user-attachments/assets/ce5037f0-1d56-45f0-979e-72f205724fba" />
## 3. tekan new terminal
<img width="1366" height="768" alt="Screenshot From 2025-09-17 19-38-18" src="https://github.com/user-attachments/assets/3522d9c5-ecf2-45a8-80f9-b0eff9380353" />

## 4. ikuti langkah berikut ini yang pasti akan muncul diterminal kalian: 
```
"$ ssh-keygen -t ed25519 -C "youremail.com" Generating public/private ed25519 key pair."
```
<img width="1366" height="768" alt="Screenshot From 2025-09-17 19-39-44" src="https://github.com/user-attachments/assets/db32e038-1928-4d24-8348-f19323b87a62" />

## Enter file in which to save the key (/home/whybukos/.ssh/id_ed25519): file {nama kan file kalian}
<img width="1366" height="768" alt="Screenshot From 2025-09-17 19-40-25" src="https://github.com/user-attachments/assets/6d7c8aa5-1972-4317-b851-8d1cae691da4" />

## Enter passphrase for "file" (empty for no passphrase): (langsung enter aja)
<img width="1366" height="768" alt="Screenshot From 2025-09-17 19-42-35" src="https://github.com/user-attachments/assets/688db048-feff-41f1-958f-bd8d55eca589" />

## Enter same passphrase again
<img width="1366" height="768" alt="Screenshot From 2025-09-17 19-42-46" src="https://github.com/user-attachments/assets/6e9c674f-5537-4d22-b51c-f135eb5fb1e4" />

## 5. lalu nanti kembali lagi ke awal 
<img width="1366" height="768" alt="Screenshot From 2025-09-17 19-43-13" src="https://github.com/user-attachments/assets/c393f27d-ec03-4fa5-bf90-f3b0d4f4590e" />

## 6. terus kita akan membuat direktori dengan perintah:
## mkdir .ssh
<img width="1366" height="768" alt="Screenshot From 2025-09-17 19-43-13" src="https://github.com/user-attachments/assets/200862c5-27be-4a7e-8582-fadb9b4d4e4d" />

## cd
<img width="1366" height="768" alt="Screenshot From 2025-09-17 19-43-27" src="https://github.com/user-attachments/assets/d3d28adf-1b3e-41cb-ae34-991d814116d0" />

## ls (setelah ls akan muncul isi file mirip seperti ini)
```
Desktop  Downloads  file.pub  Pictures  Templates  yay
Documents  file  Music  Public  Videos
```

<img width="1366" height="768" alt="Screenshot From 2025-09-17 19-44-36" src="https://github.com/user-attachments/assets/81acc498-c51c-43d9-b3b6-137b70821516" />

## lalu kita akan memindahkan file yang tadi kalian buat ke file.pub dengan perintah : 
## - mv file file.pub.ssh/
## - cat .ssh/file
## - cat .ssh/file.pub

<img width="1366" height="768" alt="Screenshot From 2025-09-17 19-45-26" src="https://github.com/user-attachments/assets/db532648-3a33-4314-8618-9a380a30d620" />

## setelah itu akan muncul kunci SSH kalian 

## 7. lanjut kita akan membuak github, jangan lupa untuk menyalin kunci SSH yang tadi

## 8. Sudah di github, kalian ke profile dan klik opsi setting 

<img width="1366" height="768" alt="Screenshot From 2025-09-17 19-46-23" src="https://github.com/user-attachments/assets/1e26ca39-ef93-4bb3-978d-bc70eabdd718" />

## 9. lalu klik opsi SSH and GPG Keys

<img width="1366" height="768" alt="Screenshot From 2025-09-17 19-46-35" src="https://github.com/user-attachments/assets/f765c33f-ded0-46a1-8fb8-a12af8299afb" />

## 10. klik new ssh key
<img width="1366" height="768" alt="Screenshot From 2025-09-17 19-46-45" src="https://github.com/user-attachments/assets/deec1fbd-e7b0-4ba2-95cf-f4a67f184f9b" />

## 11. beri nama sesuka kalian 
<img width="1366" height="768" alt="Screenshot From 2025-09-17 19-47-03" src="https://github.com/user-attachments/assets/25d14a51-f5af-4c24-99f1-70e5215f345d" />

12. dan tempelkan ssh key yang sudah kalian salin sebelumnya
<img width="1366" height="768" alt="Screenshot From 2025-09-17 19-47-52" src="https://github.com/user-attachments/assets/13a07eae-35e3-4c1e-a6fb-e223c18ca3a9" />
<img width="1366" height="768" alt="Screenshot From 2025-09-17 19-48-05" src="https://github.com/user-attachments/assets/4589df29-9e5d-4568-9cec-6df5ae3e774b" />

selesai.

