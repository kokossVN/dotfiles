#! /bin/bash

intern=eDP1
extern=HDMI1



i3-nagbar -t warning -m "Select screen mode (* as Primary)" -B 'Mirror Screen' '' -B 'Left* to right' '
	pkill i3-nagbar & ~/dotfiles/i3/screen_fix/left_dual_screen.sh
' -B 'Right* to Left' '
	pkill i3-nagbar & ~/dotfiles/i3/screen_fix/right_dual_screen.sh
' -B 'Extenal Screen only' '
	pkill i3-nagbar & xrandr --output "$intern" --off --output "$extern" --auto
' -B 'Local Screen only' '
	pkill i3-nagbar & xrandr --output "$extern" --off --output "$intern" --auto
'
