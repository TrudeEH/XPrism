start () {
   ps aux | grep $1 | grep -v grep &> /dev/null
   if [ $? == 1 ] then
      $1 &
   fi
}

start "lxsession"
start "picom --experimental-backend -b"
start "nm-applet"
start "slstatus"
start "volumeicon"
start "dunst"
