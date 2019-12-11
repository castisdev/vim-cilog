#!/bin/bash -e
wget https://raw.githubusercontent.com/castisdev/vim-cilog/master/install.sh --no-check-certificate
wget https://raw.githubusercontent.com/castisdev/vim-cilog/master/cilog.vim --no-check-certificate
chmod +x install.sh
./install.sh
rm -f install.sh cilog.vim
