#!/bin/bash 
# Image viewer
sudo apt -y install gpicview

# Thunar file manager
sudo apt -y install thunar

# Lxappearance
sudo apt -y install lxappearance

# font awesome 
cd ~/Downloads
git clone https://github.com/FortAwesome/Font-Awesome.git
mkdir ~/.fonts
mv ~/Downloads/Font-Awesome/fonts/fontawesome-webfont.ttf ~/.fonts
rm -rf Font-Awesom

# xbacklight for brightness control
sudo apt -y install xbacklight

# comption compositor
sudo apt -y install compton

# feh for background image
sudo apt -y install feh

# Monitor configuration gui
sudo apt -y install arandar

# Infanality for better font rendering
sudo add-apt-repository ppa:no1wantdthisname/ppa
sudo apt update
sudo apt -y install fontconfig-infinality

# rofi (replacement for dmenu)
sudo apt -y install rofi

# i3 blocks
sudo apt -y install i3blocks
