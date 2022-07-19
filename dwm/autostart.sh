lxsession &
slstatus &
picom --experimental-backend -b &
nm-applet &

ps aux | grep volumeicon | grep -v grep &> /dev/null
if [ $? == 1 ] then
	volumeicon &
fi

dunst &
