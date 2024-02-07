#!/usr/bin/env bash

#what is your pc
if [[ $(echo $(hostnamectl) | grep -ic "laptop") -eq 1 ]]; then
	THIS_DEVICE=laptop
elif [[ $(echo $(hostnamectl) | grep -ic "desktop") -eq 1 ]]; then
	THIS_DEVICE=desktop
fi

#only number in parameter
for i in $*; do
	if [[ ! $i =~ ^[0-9]+$ ]]; then
		echo "only number in value"
		exit 1
	fi

done
case $THIS_DEVICE in
laptop)
	echo " this is laptop"
	if [[ ! $(whoami) = "root" ]]; then
		echo "Permision Denined"
		echo "Try again with su"
	else
		echo $1 >/sys/class/backlight/intel_backlight/brightness
	fi
	;;
desktop)
	echo " this is desktop"
	case $1 in
	10)
		ddcutil setvcp 10 $2
		echo "brightness change to $2%"
		;;
	12)
		ddcutil setvcp 12 $2
		echo "contrast chane to $2%"
		;;
	*)
		echo "only id 10 and 12 can set value"
		;;
	esac
	;;
esac
