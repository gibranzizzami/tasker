## cari paket MongoDB di AUR
```
yay -S mongodb-bin
```
## Selama proses:

## yay akan menanyakan apakah mau mengedit PKGBUILD → tekan N kalau tidak perlu.
![WhatsApp Image 2025-09-21 at 15 04 25](https://github.com/user-attachments/assets/37c7f9a4-ccb9-4a8e-b068-1edfebc604cc)


## Tunggu sampai selesai build & install.
![WhatsApp Image 2025-09-21 at 15 04 25 (1)](https://github.com/user-attachments/assets/2024c314-2852-45a3-8ea7-deab5652c11f)

![WhatsApp Image 2025-09-21 at 15 04 25 (2)](https://github.com/user-attachments/assets/140c6782-7691-46f6-a8b4-86e384726cf6)

![WhatsApp Image 2025-09-21 at 15 04 26](https://github.com/user-attachments/assets/9edf51c9-721f-4b5e-8d6a-d8edc015c89b)

![WhatsApp Image 2025-09-21 at 15 04 27](https://github.com/user-attachments/assets/8861ce48-563a-44a4-ad65-e8192cc5d347)


## lalu jika sudah selesai instalasi ketik:
```
systemctl status mongodb
```

## jika status nya masih disable kita enable kan dulu caranya yaitu :
```
systemctl start mongodb
```
## lalu 
```
systemctl enable mongodb
```
## nanti akan seperti ini:
![WhatsApp Image 2025-09-21 at 15 04 27 (1)](https://github.com/user-attachments/assets/d98551dc-d35e-431a-9f6d-6bd697aef0b3)

  ![WhatsApp Image 2025-09-21 at 15 04 27 (2)](https://github.com/user-attachments/assets/bfe076e5-04a4-4274-af61-c6ba8a573c47)


## Masuk ke shell MongoDB: mongosh

## selesai
