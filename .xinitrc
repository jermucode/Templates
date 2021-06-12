setxkbmap fi 
export BROWSER=firefox
export EDITOR=vim

#Let us try to generate entropy
# Yeah let's forget this
# ./.scripts/entropier

# Start some nice programs from /etc/X11/xinit/xinitrc
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

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

# Wallpaper is set in ~/.local/share/dwm/autostart
#sh ~/.scripts/wallpaper.sh &

# enable numlock at start of window manager
numlockx &
exec dwm 
