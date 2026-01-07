# Download mariadb di arch linux
## 1. Download paket mariadb

    sudo pacman -S mariadb

## 2. Download database

    sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

## 3. Jalankan program

    sudo systemctl enable mariadb
    sudo systemctl start mariadb

## 4. Simpan installasi

    sudo mysql_secure_installation

## 5. Testing 

    mariadb -u root -p

## 6. Kalau ada prompt 

    MariaDB [(none)]>

## berarti Mariadb sudah terinstall