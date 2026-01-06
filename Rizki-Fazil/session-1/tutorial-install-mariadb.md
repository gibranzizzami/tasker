# tutorial install mariabd

## step 1 : install mariadb
untuk menginstall mariadb tambahkan text
```
sudo pacman -S mariadb
```
![step 1](https://github.com/user-attachments/assets/94757411-5022-41ca-989c-86de3d5f3715)

kemudian tekan enter untuk mulai menginstall
## step 2 : masukkan password dan kembali menekan enter

## step 3 : tambahkan Y
ketika muncul pilihan untuk memproses instalasi, masukkan text 
```
Y
```
![step 2](https://github.com/user-attachments/assets/f850c950-eab9-4cdc-9d4b-8579763491d7)

## step 4 : install mariadb dengan menggunakan link mysql
```
mariadb-install-db --user=mysql --base dir=/usr --datadir=/var/lib/mysql
```
![step 3](https://github.com/user-attachments/assets/9efba6b4-81b4-4b81-96d9-b599ab6826c9)

## step 5 : tekan enter dan masukkan password
![step 4](https://github.com/user-attachments/assets/cc4137e9-a597-41bb-8c27-6f452c4bad0b)

## step 6 : aktifkan aplikasi mariadb
untuk mengaktifkan aplikasi mariadb tambahkan text 
```
sudo systemctl start mariadb
```
![step 5](https://github.com/user-attachments/assets/89ac2513-3ede-4dd3-b0b4-dda9f7582dc7)

tekan enter dan masukkan password
![step 6](https://github.com/user-attachments/assets/06e50d2a-8393-4ba3-8092-e3191a791c76)

## step 7 :jalankan aplikasi mariadb
untuk menjalankan aplikasi mariadb tambahkan text 
```
mariadb
```
![step 7](https://github.com/user-attachments/assets/cbbbf826-fd4a-46b2-8e98-232a92cd7cfd)
