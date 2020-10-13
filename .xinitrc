setxkbmap fi 
export BROWSER=firefox
export EDITOR=vim

# Loop
while true
do
 #Set root title
	sh ~/.xsetroot.sh
# Update stats every 10 seconds
    sleep 10s
done &

# Not sure if these are needed here
#pulseaudio &
xcompmgr &

#sh ~/.scripts/randomWallpaper/randomWall.sh &
#wal ~/.scripts/arch2.jpg &
exec dwm 
