#!/usr/bin/env bash

if [[ $(echo $(hostnamectl) | grep -ic "laptop") -eq 1 ]]; then	
	THIS_DEVICE=laptop
elif [[ $(echo $(hostnamectl) | grep -ic "desktop") -eq 1 ]]; then
	# THIS_DEVICE=desktop
	THIS_DEVICE=laptop
fi

case $THIS_DEVICE in 
	laptop)
		echo "laptop"
		if [[ ! $(whoami) = "root" ]]; then
			echo "Permision Denined"
			echo "Try again with root"
		else
			echo "on working"
		fi
		;;
	desktop)
		echo "desktop"
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
