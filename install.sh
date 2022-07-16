#! /bin/bash

# DWM dependencies
sudo pacman -S base-devel libx11 libxft libxinerama freetype2 fontconfig ttf-ubuntu-font-family

# Wallpaper dependencies
sudo pacman -S feh

# -------------------------------------------
# Compile

compile () {
  cd $1
  make
  sudo make clean install
  rm -f $1 *.o */*.o config.h stest
  cd ..
}

compile "dwm"
compile "slstatus"
compile "st"
compile "dmenu"
compile "slock"

# Save autostart
mkdir -p ~/.local/share/dwm/
cp -f dwm/autostart.sh ~/.local/share/dwm/
cp -f bg.png ~/.local/share/dwm/

# GTK theme

sudo pacman -S lxappearance

sudo mkdir -p /usr/share/icons
sudo cp -rf themes/Dracula /usr/share/icons

sudo mkdir -p /usr/share/themes
sudo cp -rf themes/dracula-gtk /usr/share/themes

echo ---------------------------------------
echo - Lauch LXappearance to change themes -
echo ---------------------------------------

# LXsession
sudo pacman -S lxsession

# Network Manager
sudo pacman -S wpa_supplicant wireless_tools networkmanager network-manager-applet
sudo systemctl enable NetworkManager.service
sudo systemctl disable dhcpcd.service
sudo systemctl enable wpa_supplicant.service
sudo systemctl start NetworkManager.service

# Volume Icon
sudo pacman -S volumeicon

# Picom
sudo pacman -S picom
