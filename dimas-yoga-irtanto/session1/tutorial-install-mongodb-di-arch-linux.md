# TUTORIAL INSTAL MONGODB44 DI ARCH LINUX
## 1. Instal yay
masukkan command
```
git clone https://aur.archlinux.org/yay
```
masukkan command
```
cd yay
```
```
ls
```
```
makepkg -sri
```
## 2. install mongodb
masukkan command
```
yay -S mongodb44-bin
```
**akan ada notifikasi**

Package cleanbuild?
A

Diffs to show?
N

lalu ikuti semua proses instalasinya sampai muncul notifikasi seperti ini
<img width="1361" height="130" alt="install mongodb4 (Edited)" src="https://github.com/user-attachments/assets/03c2dfc7-6870-497e-88f2-e88017d205ae" />
masukkan command
```
yay -Rdd mongodb-bin-debug
```
Do you want to remove these packages?
y

lalu masukkan command 
```
yay -S mongodb44-bin
```
**akan ada notifikasi**

Package cleanbuild?
A

Diffs to show?
N

lalu ikuti semua prosesnya sampai muncul tampilan seperti ini

<img width="1366" height="455" alt="install mongodb6 (Edited)" src="https://github.com/user-attachments/assets/b19f77d2-8550-44ab-9505-69f9b59e34e8" />

selanjutnya masukkan command
```
sudo systemctl enable mongodb
```
```
sudo systemctl start mongodb
```
untuk meng-konfirmasi bahwa mongodb telah berjalan maka masukkan command
```
sudo systemctl status mongodb
```
jika tampilanya seperti ini maka mongodb sudah berjalan
<img width="1366" height="451" alt="install mongodb15 (Edited)" src="https://github.com/user-attachments/assets/bb36e647-d056-418d-b810-bbfa2e973401" />


**karena kita menggunakan mongodb44 kita harus meng-instal mongosh**
masukkan command
```
yay -S mongosh
```
**akan ada notifikasi**

Package cleanbuild?
A

Diffs to show?
N

lalu ikuti semua prosesnya sampai selesai.


masukkan command 
```
mongosh
```
untuk menjalankan mongodb

tampilanya akan seperti ini
<img width="1366" height="451" alt="install mongodb15 (Edited)" src="https://github.com/user-attachments/assets/db986fbb-d088-4f0a-89ca-6ae4743d077d" />

## SELESAI


