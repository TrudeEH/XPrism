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
