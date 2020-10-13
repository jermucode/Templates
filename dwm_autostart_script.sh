#!/bin/bash

# Set all wallpapers into an array and pick one at random
# After picking one, set it as a global variable for this X session
# This is because then we can invoke st in dwm using the given pywal theme
# Without setting this as a global variable, all subsequent st windows will use my default st font colors


my_array=(~/wallpapers/*)
wallpaper=(${my_array[$(( $RANDOM % ${#my_array[@]}))]})

# This is the original one that works:
# So keeping like this actually opens terminal, sets pywal colors and background
#st | wal -i ${my_array[$(( $RANDOM % ${#my_array[@]}))]} | neofetch

export WALLPAPER=$wallpaper
echo $WALLPAPER > /home/jermu/wallpaperfile.txt
st | wal -i $WALLPAPER | neofetch
WALLPAPER=$(cat wallpaperfile.txt)


sh ~/.scripts/internet.sh 

