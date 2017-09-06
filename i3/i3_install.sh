#!/bin/bash 

#i3 wm
sudo apt -y install i3 i3blocks

# Image viewer
sudo apt -y install gpicview

# Thunar file manager
sudo apt -y install thunar

# Lxappearance
sudo apt -y install lxappearance

# cursor theme
sudo apt -y install dmz-cursor-theme

# Terminal emulator
 sudo apt install gnome-terminal

# font awesome 
git clone https://github.com/FortAwesome/Font-Awesome.git
mkdir ~/.fonts
mv Font-Awesome/fonts/fontawesome-webfont.ttf ~/.fonts
rm -rf Font-Awesome

# xbacklight for brightness control
sudo apt -y install xbacklight

# comption compositor
sudo apt -y install compton

# wallpaper changer
sudo apt -y install nitrogen

# Monitor configuration gui
sudo apt -y install arandar

# Infanality for better font rendering
sudo add-apt-repository ppa:no1wantdthisname/ppa
sudo apt update
sudo apt -y install fontconfig-infinality

# Install Ubuntu font
mkdir -p ~/.fonts
cd ~/.fonts
wget http://font.ubuntu.com/download/ubuntu-font-family-0.83.zip
unzip ubuntu-font-family-0.83.zip
rm -f ubuntu-font-familty-0.83.zip
fc-cache -fv
