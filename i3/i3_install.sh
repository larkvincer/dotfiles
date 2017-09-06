#!/bin/bash 

#i3 wm
sudo apt -y install i3 i3blocks

# i3-gaps
sudo add-apt-repository -y ppa:aguignard/ppa
sudo apt update
libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm-dev
cd ~
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build
# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install

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
