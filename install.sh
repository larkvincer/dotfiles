#!/bin/bash 
# This is configuration bash script for Ubuntu 16.04

# Updating repos
sudo apt update

# Installing zsh
sudo apt -y install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

# Redshift
sudo apt -y install redshift

# htop
sudo apt -y install htop

# lm-sensors
sudo apt -y install lm-sensors

# Installing telegram
cd ~ && wget -O - "https://telegram.org/dl/desktop/linux" | tar xJf -
sudo mv ./Telegram /opt/Telegram

# Tlp power manager
sudo apt -y install tlp
