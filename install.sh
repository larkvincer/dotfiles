#!/bin/bash 
# This is configuration bash script for Ubuntu 16.04

# Updating repos
sudo apt update

# Vim
sudo apt install -y vim

# Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
sudo apt install -y google-chrome-stable

# Redshift
sudo apt -y install redshift

# Git
sudo apt -y install git

# htop
sudo apt -y install htop

# Install arc theme
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key
sudo apt-key add - < Release.key
sudo apt update && sudo apt -y install arc-theme
rm Release.key

# Papirus icon theme
wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-icon-theme/master/install-papirus-home-gtk.sh | sh

# Installing dropbox
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd

# Installing telegram
cd ~ && wget -O - "https://telegram.org/dl/desktop/linux" | tar xjf -
sudo mv ./Telegram /opt/Telegram

# Installing java sdk 8
cd ~ \
&& wget -O - -c --no-check-certificate --no-cookies \
--header "Cookie: oraclelicense=accept-securebackup-cookie" \
http://download.oracle.com/otn-pub/java/jdk/8u102-b14/jdk-8u102-linux-x64.tar.gz \
| tar -xzf -\
sudo mv ./jdk1.8.0_102 /opt/

