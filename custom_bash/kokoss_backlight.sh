#!/usr/bin/env bash

if [[ $(echo $(hostnamectl) | grep -ic "laptop") -eq 1 ]]; then	
	THIS_DEVICE=laptop
elif [[ $(echo $(hostnamectl) | grep -ic "desktop") -eq 1 ]]; then
	THIS_DEVICE=desktop
fi

case $THIS_DEVICE in 
	laptop)
		echo " this is laptop"
		if [[ ! $(whoami) = "root" ]]; then
			echo "Permision Denined"
			echo "Try again with root"
		else
			echo $1 > /sys/class/backlight/intel_backlight/brightness
		fi
		;;
	desktop)
		echo " this is desktop"
		case $1 in 
			10)
				echo "brightness change to $2 %"
				;;
			12)
				echo "contrast chane to $2 %"
		;;
esac

# if [[ $THIS_DEVICE = "laptop" ]]; then
# fi
#
# if [[ $THIS_DEVICE = "desktop" ]]; then
# 	ddcutil setvcp $1 $2 
# 	ddcutil setvcp $1 $2
# 	if [[ $1 -eq 10 ]]; then
# 		echo "change brightness to $2"
# 		else
# 	fi
# fi
