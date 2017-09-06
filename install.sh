#!/bin/bash 
# This is configuration bash script for Ubuntu 16.04

# Updating repos
sudo apt update

# Neovim
#sudo apt-get install software-properties-common
#sudo add-apt-repository ppa:neovim-ppa/stable -y
#sudo apt update
#sudo apt install -y neovim

# Installing zsh
sudo apt -y install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

# Google Chrome
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
#sudo apt update
#sudo apt -y install google-chrome-stable

# Redshift
sudo apt -y install redshift

# htop
sudo apt -y install htop

# lm-sensors
sudo apt -y install lm-sensors

# Install arc theme
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key
sudo apt-key add - < Release.key
sudo apt update && sudo apt -y install arc-theme
rm Release.key

# Papirus icon theme
 wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-icon-theme/master/install-papirus-home-gtk.sh | sh

# Installing dropbox 
#cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

# Installing telegram
cd ~ && wget -O - "https://telegram.org/dl/desktop/linux" | tar xJf -
sudo mv ./Telegram /opt/Telegram

# Installing java sdk 8
# sudo apt -y install -y openjdk-8-jdk

# Tlp power manager
sudo apt -y install tlp

# System San Francisco font
mkdir -p ~/.fonts && cd ~/.fonts
git clone https://github.com/supermarin/YosemiteSanFranciscoFont.git
fc-cache
