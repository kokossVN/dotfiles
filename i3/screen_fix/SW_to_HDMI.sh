#! /bin/sh
intern=eDP1
extern=HDMI1



if xrandr | grep "$extern connected" ; then
	xrandr --output "$extern" --auto --output "$intern" --off
	echo display is loaded
	xrandr | grep "$extern"
else
	xrandr --output	"$intern" --auto --output --primary "$extern" --off
	echo no external output found, set primary by default
	xrandr | grep  "$intern"
fi
