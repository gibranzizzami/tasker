# Tatacara Install Monggodb di Arch Linux

## Install yay 
Jalankan prompt di bawah ini:


    git clone https://aur.archlinux.org/yay.git

Ketikan

    cd yay

    makepkg -sri

## Setelah itu, Install mongodb

    yay -S mongodb44-bin

## Ikutin prompt dibawah ini

    sudo systemctl start mongodb

    sudo systemctl enable mongodb

    sudo systemctl status mongodb
## Selesai 
