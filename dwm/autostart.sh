start() {
    ps -A | grep $1
    if [ $? != 0 ]
    then
	$1 &
    else
	killall $1
	start $1
    fi
}

start "picom"
start "nm-applet"
start "slstatus"
start "dunst"
start "pasystray"

nitrogen --restore
