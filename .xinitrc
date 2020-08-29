setxkbmap fi 
export BROWSER=surf
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

sh ~/.scripts/wallpaper.sh &
exec dwm
