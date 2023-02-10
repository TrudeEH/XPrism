#! /bin/bash

choice=$(echo -e "Update TruDE\nKeyboard Shortcuts\nEdit config.h\nShutdown System" | dmenu -l 30 -p "TruDE Menu")

if [ "$choice" == "Keyboard Shortcuts" ]
then
	awk '/XK|MODKEY/ {print $2, $3, $4, $7}' /usr/share/TruDE/config.def.h | sed 's/XK_//g; s/,//g; s/ShiftMask/Shift/g; s/Mod1Mask/ALT/g; s/MODKEY/MOD/g; s/ControlMask/CTRL/g; s/}//g; s/=//g; s/)/ tags/g' | column -s' ' -t -N'MOD KEY, ADDITIONAL KEY, ACTION/COMMAND, COMMAND ARGUMENTS' -R3 | dmenu -l 30 -p 'TruDE Shortcuts:'
elif [ "$choice" == "Update TruDE" ]
then
	st -e bash /usr/share/TruDE/update.sh
elif [ "$choice" == "Shutdown System" ]
then
	st -e sudo shutdown now
elif [ "$choice" == "Edit config.h" ]
then
	st -e vi ~/TruDE/config.h
fi
