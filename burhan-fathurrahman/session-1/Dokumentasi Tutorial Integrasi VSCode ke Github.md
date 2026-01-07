Totorial Mengintegrasikan akun Github dengan VSCode

Masukkan command ssh-keygen -t rsa -C "fathursukehiro@gmail.com", email nya disesuaikan dengan email milik anda. Gunakan email pribadi anda lalu tekan Enter

Generating public/private rsa key pair.

Enter file in which to save the key (/home/fathurrr/.ssh/id_rsa): (tekan Enter juga tulisan ini muncul)

Overwrite (y/n)? y (jika tulisan Overwrite (y/n) maka kita cukup untuk menekan huruf y

Enter passphrase for "/home/fathurrr/.ssh/id_rsa" (empty for no passphrase): (tekan Enter setelah tulisan ini munucl

Enter same passphrase again: tekan Enter kembali pada saat tulisan ini muncul

lalu ketik (cat ~/.ssh/id_rsa.pub), lalu akan muncul link yang cukup panjang dan Anda perlu mengcopy nya 

Buka software pencarian Anda seperti Google Chrome, Mozilla Firefox, dll lalu ketik Github atau bisa menggunakan link ini https://github.com/

Lalu anda harus login terlebih dahulu dengan mengklik tulisan Sign In

Tekan tampilan profile Anda, pilih settings, pilih SSH & GPG Keys, beri nama pada kolom Title dan paste link yang telah dicopy dari terminal pada kolom Key, dan terakhir klik Add SSH Key

Lalu Anda akan diarahkan untuk melakukan Confirm Access, kemudian klik Verify Via Email. Buka email yang anda gunakan untuk melihat pesan yang masuk dari Github berupa angka, dan masukkan angka-angka tersebut. Setelah itu Anda akan melihat gambar kunci dengan tulisan SSH di bawah nya pada kolom Authentication Keys yang di mana hal ini telah menandakan bahwa integrasi VSCode dengan Github telah berhasil


<img width="1916" height="937" alt="Step_IntegrasiGithub_14" src="https://github.com/user-attachments/assets/942e0267-93dd-4f2d-a680-4f2e1d459f83" />
