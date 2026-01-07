# TUTORIAL INTEGRASI VSCODE DENGAN GITHUB
# 1. Langkah pertama masuk ke terminal 
masukkan command
```
ssh-keygen -t ed25519 -C "emailkamu@gamail.com"
```
tekan enter, maka akan muncul tampilan seperti ini 
<img width="1366" height="736" alt="integrasi vscode dengan github 2" src="https://github.com/user-attachments/assets/1ae26dc6-bef7-4a68-afaf-3ddaa6e7aea0" />

lalu tekan enter maka akan muncul tampilan seperti ini 

<img width="1366" height="736" alt="integrasi vscode dengan github 3" src="https://github.com/user-attachments/assets/71d4b72b-8d28-4614-b358-20e1cb018042" />


ketik y lalu enter, **tekan enter terus sampai muncul tampilan seperti ini**

<img width="1366" height="736" alt="integrasi vscode dengan github 6" src="https://github.com/user-attachments/assets/1acbb5ad-4a13-41b1-8603-bfe60ab04724" />
masukkan command ini

```
cat ~/.ssh/id_ed25519.pub
```
lalu enter

maka akan keluar SSH key
**contoh:** 
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICUIV0QNqRY6bvnzjs/xT2WDqWThvfsx3G3CxarC4yPW emailkamu@gmail.com


copy kode tersebut

# 2. masuk ke github

<img width="1366" height="736" alt="integrasi vscode dengan github 9" src="https://github.com/user-attachments/assets/f9b378c5-094b-47e0-9036-45177f318faf" />

# 3. lalu klik ikon akun di pojok kanan atas

<img width="1366" height="736" alt="integrasi vscode dengan github 10" src="https://github.com/user-attachments/assets/35c60dac-e635-400c-9d75-db6075408c6c" />


# 4. pilih setting

<img width="1366" height="736" alt="integrasi vscode dengan github 11" src="https://github.com/user-attachments/assets/510a81e3-3504-428f-ac3a-76e7c1bd83db" />

# 5. lalu pilih SSH and GPG key

<img width="1366" height="736" alt="integrasi vscode dengan github 12" src="https://github.com/user-attachments/assets/b2e81f00-54ed-4c10-8934-db74baf5d560" />

# 6. lalu pilih new SSH key
<img width="1366" height="736" alt="integrasi vscode dengan github 13" src="https://github.com/user-attachments/assets/8bb11e9f-15cf-4bb1-a2ed-301bd4aa95ca" />


# 7. lalu paste yang di copy tadi lalu tekan add SSH key


SELESAI.
