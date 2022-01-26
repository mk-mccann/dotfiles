#!/bin/bash

cd ~

mkdir repos && cd "$_"

# Get my dotfiles repos
git clone https://github.com/mkm4884/dotfiles.git

# Get ubuntu themes and install them
mkdir ubuntu_themes && cd "$_"

git clone https://github.com/vinceliuice/Qogir-theme.git
cd Qogir-theme/
sudo ./install.sh -t ubuntu -l ubuntu -c dark
cd ..

git clone https://github.com/vinceliuice/Qogir-icon-theme.git
cd Qogir-icon-theme/
sudo ./install.sh
cd ..
