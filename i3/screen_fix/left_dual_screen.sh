#! /bin/sh
intern=eDP1
extern=HDMI1


if xrandr | grep "$extern connected" ; then
	xrandr --output "$intern" --primary --auto --output "$extern" --left-of "$intern" --auto
	echo display is loaded
	xrandr | grep "$extern"
else
	xrandr --output	"$intern" --auto
	echo no external output found, set primary by default
	xrandr | grep  "$intern"
fi


