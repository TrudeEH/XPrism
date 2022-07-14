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
  rm -f $1 *.o config.h stest blocks.h
  cd ..
}

compile "dwm"
compile "dwmblocks"
compile "st"
compile "dmenu"
compile "slock"

# Save autostart
mkdir -p ~/.local/share/dwm/
cp -f dwm/autostart.sh ~/.local/share/dwm/
cp -f bg.jpg ~/.local/share/dwm/
