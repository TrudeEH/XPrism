start() {
    ps -A | grep $1
    if [ $? != 0 ]
    then
	if [ $1 == "picom" ]
	then
 	    $1 --experimental-backend -b &
	else
	    $1 &
	fi
    else
	killall $1
	start $1
    fi
}

start "picom"
start "nm-applet"
start "slstatus"
start "dunst"

feh --bg-fill ~/.local/share/dwm/wallpaper.png
