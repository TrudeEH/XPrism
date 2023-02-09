#! /bin/bash

awk '/XK|MODKEY/ {print $2, $3, $4}' /usr/share/TruDE/config.def.h | sed 's/XK_//g; s/,//g; s/ShiftMask/Shift/g; s/Mod1Mask/ALT/g; s/MODKEY/MOD/g; s/ControlMask/CTRL/g;
s/)/ tags/g' | column -s' ' -t -N'MOD KEY, ADDITIONAL KEY, ACTION/COMMAND' -R3 | dmenu -l 30 -p 'TruDE Shortcuts:'
