#!/bin/bash 
# This is configuration bash script for Ubuntu 16.04

# Updating repos
sudo apt update

# Tilda terminal
sudo apt -y install tilda

# Neovim
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt update
sudo apt install -y neovim

# Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
sudo apt install -y google-chrome-stable

# Redshift
#sudo apt -y install redshift

# Git
sudo apt -y install git

# Inkscape
sudo apt -y install inkscape

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

# Unity-tweak-tool
sudo apt -y install unity-tweak-tool 


# Installing dropbox
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
#~/.dropbox-dist/dropboxd

# Installing telegram
cd ~ && wget -O - "https://telegram.org/dl/desktop/linux" | tar xJf -
sudo mv ./Telegram /opt/Telegram

# Installing java sdk 8
cd ~ \
&& wget -O - -c --no-check-certificate --no-cookies \
--header "Cookie: oraclelicense=accept-securebackup-cookie" \
http://download.oracle.com/otn-pub/java/jdk/8u102-b14/jdk-8u102-linux-x64.tar.gz \
| tar -xzf - \
&& sudo mv jdk1.8.0_102 /opt
echo "# Java path" >> ~/.bashrc
echo 'export JAVA_HOME=/opt/jdk1.8.0_102' >> ~/.bashrc
echo 'export PATH="$JAVA_HOME/bin/:$PATH"' >> ~/.bashrc

# Installing sublime text 3
cd ~
wget -O subl.deb https://download.sublimetext.com/sublime-text_build-3126_amd64.deb
sudo dpkg -i subl.deb
rm -f subl.deb

# Tlp power manager
sudo apt install -y tlp

# Installing programming fonts
git clone https://github.com/hbin/top-programming-fonts ~/.fonts
cd ~/.fonts/top-programming-fonts && rm -rf Hack/ README.md 3270Medium.otf install.sh 
