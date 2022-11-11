#! /bin/bash

clear
echo " _______         _____  ______  "
echo "|__   __|       |  __ \|  ____| "
echo "   | |_ __ _   _| |  | | |__    "
echo "   | | '__| | | | |  | |  __|   "
echo "   | | |  | |_| | |__| | |____  "
echo "   |_|_|   \__,_|_____/|______| "
echo
echo
echo "Select your Linux distro"
echo "1 - Debian"
echo "2 - Arch"
echo

read -p ">> " choice

if [ $choice == "1" ] ; then
	sudo apt update
	sudo apt install -y make gcc libx11-dev libxft-dev libxinerama-dev xorg libfreetype6-dev libfontconfig1-dev xorg-dev
	sudo apt install -y compton
	sudo apt install -y network-manager-gnome
	sudo apt install -y dunst

elif [ $choice == "2" ] ; then
	sudo pacman -Sy
	sudo pacman -S xorg-server base-devel libx11 libxft libxinerama freetype2 fontconfig ttf-font-awesome --noconfirm
	sudo pacman -S picom --no-confirm
    sudo pacman -S wpa_supplicant wireless_tools networkmanager network-manager-applet --noconfirm
	sudo pacman -S dunst libnotify --noconfirm
fi

compile () {
	cd $1
	make
	sudo make clean install
	rm -f $1 *.o */*.o config.h stest
	cd ..
}

# Install the DE
compile "dwm"
compile "slstatus"
compile "st"
compile "dmenu"
compile "slock"


# Configure Network Manager
sudo systemctl enable NetworkManager.service
sudo systemctl disable dhcpcd.service
sudo systemctl enable wpa_supplicant.service
sudo systemctl start NetworkManager.service


# Configure Picom
mkdir -p ~/.config/picom
cp -f picom.conf ~/.config/picom


# Install dunst
mkdir -p ~/.config/dunst
cp -f dunstrc ~/.config/dunst


# Autostart + Wallpaper
mkdir -p ~/.local/share/dwm/
cp -f dwm/autostart.sh ~/.local/share/dwm/
cp -f wallpaper.png ~/.local/share/dwm/
