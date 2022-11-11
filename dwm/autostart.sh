#start () {
#   ps aux | grep $1 | grep -v grep #&> /dev/null
#   if [ $? == 1 ]; then
#      $1 &
#   fi
#}

#start "picom --experimental-backend -b"
#start "nm-applet"
#start "slstatus"
#start "dunst"

picom --experimental-backend -b &
nm-applet &
slstatus &
dunst &

feh --bg-fill ~/.local/share/dwm/wallpaper.png
