#! /bin/sh
intern=eDP1
extern=HDMI1

if xrandr | grep "$extern connected"; then
	i3-nagbar -t warning -m "Found external output" -B 'Switch to left' '~/dotfiles/i3/screen_fix/left_dual_screen.sh & pkill i3-nagbar '  -B 'Switch to right' '  ~/dotfiles/i3/screen_fix/right_dual_screen.sh & pkill i3-nagbar' -B 'External screen only' '~/dotfiles/i3/screen_fix/SW_to_HDMI.sh'  -B 'Open Aranr' 'pkill i3-nagbar | arandr'
	feh --bg-scale --zoom fill  --randomize  ~/dotfiles/wp

else
	echo no external found
	xrandr --output "$intern" --auto --output "$extern"
fi



