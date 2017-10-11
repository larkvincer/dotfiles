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

# Install arc theme
wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key
sudo apt-key add - < Release.key
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
sudo apt update && sudo apt -y install arc-theme
rm Release.key

# Papirus icon theme
 wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-icon-theme/master/install-papirus-home-gtk.sh | sh

# Installing telegram
cd ~ && wget -O - "https://telegram.org/dl/desktop/linux" | tar xJf -
sudo mv ./Telegram /opt/Telegram

# Tlp power manager
sudo apt -y install tlp

# Albert launcher
sudo add-apt-repository -y ppa:nilarimogard/webupd8
sudo apt update
sudo apt -y install albert

# Google Chrome
cd ~
wget -O chrome https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -I chrome
sudo apt install -f
sudo dpkg -i chrome
rm -f chrome
