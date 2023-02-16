#! /bin/bash

choice=$(echo -e "Update XPrism\nKeyboard Shortcuts\nChange Wallpaper\nEdit config.h\nShutdown System" | dmenu -l 30 -p "XPrism Menu")

if [ "$choice" == "Keyboard Shortcuts" ]
then
	awk '/XK|MODKEY/ {print $2, $3, $4, $7}' ~/.local/share/XPrism/config.def.h | sed 's/XK_//g; s/,//g; s/ShiftMask/Shift/g; s/Mod1Mask/ALT/g; s/MODKEY/MOD/g; s/ControlMask/CTRL/g; s/}//g; s/=//g; s/)/ tags/g' | column -s' ' -t -N'MOD KEY, ADDITIONAL KEY, ACTION/COMMAND, COMMAND ARGUMENTS' -R3 | dmenu -l 30 -p 'XPrism Shortcuts:'
elif [ "$choice" == "Update XPrism" ]
then
	st -e bash ~/.local/share/XPrism/update.sh
elif [ "$choice" == "Shutdown System" ]
then
	st -e sudo shutdown now
elif [ "$choice" == "Edit config.h" ]
then
	st -e vi ~/XPrism/config.h
elif [ "$choice" == "Change Wallpaper" ]
then
	nitrogen &
fi
