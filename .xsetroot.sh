DATETIME=`date +" %F %R"`
#UPTIME=`uptime | sed 's/.*ups*//' | sed 's/,s*[0-9]* user.*//' | sed 's/  / /g'`
#BATTERYSTATE=$( acpi -b | awk '{ split($5,a,":"); print substr($3,0,2), $4, "["a[1]":"a[2]"]" }' | tr -d ',' )

# BROWSER is set to surf in /.bashrc
# EDITOR is set to vim in /.bashrc

THERMAL=`acpi -t | cut -c 15-29`

BATTSTATE=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "state"| cut -c 26-40`
CHARGE=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "percentage"| cut -c 26-30`

#if [ "$CHARGE" == "Discharging" 
#	]
#then
#	BATTERY=`acpi -b | grep "Battery 3" | cut -c 12-27`
#else	
#	BATTERY=`acpi -b | grep "Battery 3" | cut -c 12-24`
#fi


IPLENGTH=`ip -4 addr | grep inet | grep wlan0 | cut -c 4-20 | wc -m`

if [ $IPLENGTH == 18 ]
then
	#IP=`ip -4 addr | grep inet | grep wlan0 | cut -c 4-20`
	IP="CONNECTED TO INTERNET"
else
	IP="NO INTERNET"
fi


MEM=`free -h | awk '/^Mem:/ {print $3 " / " $2}'`

xsetroot -name  " ${IP} | ${DATETIME} | ${MEM}  | ${BATTSTATE}  ${CHARGE} | ${THERMAL} "
