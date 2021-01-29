#!/bin/bash

./symlink.sh
./install.sh
./programs.sh
./desktop.sh

# Get all upgrades
sudo apt upgrade -y

# See our bash changes
source ~/.bashrc

# reboot
reboot

