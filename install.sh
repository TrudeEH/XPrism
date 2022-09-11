#! /bin/bash

echo " _______         _____  ______  "
echo "|__   __|       |  __ \|  ____| "
echo "   | |_ __ _   _| |  | | |__    "
echo "   | | '__| | | | |  | |  __|   "
echo "   | | |  | |_| | |__| | |____  "
echo "   |_|_|   \__,_|_____/|______| "
echo
echo "Press ENTER to proceed or X to abort"

read -p ">> " choice

if [ $choice == "x" ] ; then
	exit 0
fi

deInstall() {
	sudo pacman -S xorg-server base-devel libx11 libxft libxinerama freetype2 fontconfig ttf-ubuntu-font-family ttf-font-awesome --noconfirm
	compile "dwm"
	compile "slstatus"
	compile "st"
	compile "dmenu"
	sudo pacman -S xorg-xrandr --noconfirm # Slock dependencies
	compile "slock"
}

compile () {
	cd $1
	make
	sudo make clean install
	rm -f $1 *.o */*.o config.h stest
	cd ..
}

networkManager () {
	sudo pacman -S wpa_supplicant wireless_tools networkmanager network-manager-applet --noconfirm
	sudo systemctl enable NetworkManager.service
	sudo systemctl disable dhcpcd.service
	sudo systemctl enable wpa_supplicant.service
	sudo systemctl start NetworkManager.service
}

picomInstall () {
	sudo pacman -S picom --noconfirm
	mkdir -p ~/.config/picom
	cp -f picom.conf ~/.config/picom
}

dunstInstall () {
	sudo pacman -S dunst libnotify --noconfirm
	mkdir -p ~/.config/dunst
	cp -f dunstrc ~/.config/dunst
}

autoCpuFreq() {
	# Battery optimization
	git clone https://github.com/AdnanHodzic/auto-cpufreq.git
	cd auto-cpufreq && sudo ./auto-cpufreq-installer
	cd .. && sudo rm -rf auto-cpufreq
	sudo auto-cpufreq --install
}

# Autostart + Wallpaper
mkdir -p ~/.local/share/dwm/
cp -f dwm/autostart.sh ~/.local/share/dwm/
cp -f wallpaper.png ~/.local/share/dwm/



# -------------------------------------------

sudo pacman -Sy # Update
sudo pacman -S lxsession volumeicon --noconfirm

deInstall
networkManager
picomInstall
dunstInstall
autoCpuFreq
