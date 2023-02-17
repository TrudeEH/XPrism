#! /bin/bash

echo
echo "Installing XPrism..."

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
cp -f dunstrc ~/.config/dunst/dunstrc


# Autostart + Wallpaper
mkdir -p ~/.local/share/XPrism/
cp -f dwm/autostart.sh ~/.local/share/XPrism/
sudo cp -f wallpaper.png /usr/share/XPrism/

# Configure the shortcuts helper script
sudo mkdir -p /usr/share/XPrism
sudo cp -f shortcuts.sh /usr/share/XPrism
cp -f dwm/config.def.h ~/.local/share/XPrism
cp -f update.sh ~/.local/share/XPrism

# Configure nitrogen
ls ~/.config/nitrogen | grep nitrogen*
if [ $? != 0 ]
then
	mkdir -p ~/.config/nitrogen
	cp nitrogen/* ~/.config/nitrogen
fi
