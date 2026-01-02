# Install di ubuntu

### Update sistem ubuntu

```
sudo apt update
```

### Install Nodejs dan package managernya

```
sudo apt install nodejs npm build-essential
```

### Install terminalizernya

```
sudo npm install -g terminalizer
```

### Cek versi

```
terminalizer --version
```

<img width="1114" height="655" alt="image" src="https://github.com/user-attachments/assets/b35c91dc-e0be-471a-a070-c56e1253e74a" />




## Penggunaan terminalizer

### 1. Cek versi
Masukan prompt

```
terminalizer --version
```

Kalo muncul hasilnya, lanjut step 2

### 2. Memulai Record Terminalizer

bikin nama folder record 

contoh:

```
terminalizer record tester
```
**Nama tester ganti sesuai kebutuhan**

**nanti akan mucul tab cmd baru nah pas munculnya tab baru itu sedang merekam prompt kalian**


### 3. Mengakhiri Record Terminalizer dan render hasilnya

ketik 

```
exit
```

```
terminalizer render tester
```
