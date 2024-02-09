#!/bin/sh
# this script created by Kokoss
# only work for 2 screen only

##### Screen list
#for orther device, try rename this varable

intern=eDP1
extern=HDMI1

# for mirror mode, we need same resolution.
# change it if you have bigger res
same_res=1280x720

#### Mode
#default
default() { xrandr --output "$intern" --primary --auto --output "$extern" --off; }
#
# ## 1 screen mode, only internal or external
# intern_only="pkill i3-nagbar | xrandr --output "$intern" --primary --auto --output "$extern" --off"
# extern_only="pkill i3-nagbar | xrandr --output "$extern" --auto --output "$intern" --off"
#
# ## 2 screen mode
#
# # extern_to_right
# # example: [*] [ ]
# extern_to_right="pkill i3-nagbar | xrandr --output "$intern" --primary --auto --output "$extern" --auto --right-of "$intern""
#
# # extern_to_left
# # example: [ ] [*]
# extern_to_left="pkill i3-nagbar | xrandr --output "$intern" --primary --auto --output "$extern" --auto --left-of "$intern""
#
# #mirror_screen
# # example: [*] [*]
# mirror_screen="pkill i3-nagbar | xrandr --output "$intern" --primary --mode $same_res --output "$extern" --mode $same_res --same-as "$intern""
#
# this only run when found external output
if xrandr | grep "$extern connected"; then
	# echo found external output
	# i3-nagbar -t warning -m "Found external output. Chose your option ([*] = internal; [ ] = external)"\
	# 	-B "  [*]  " 	"$intern_only"\
	# 	-B "  [ ]  " 	"$extern_only"\
	# 	-B "[*] [ ]" 	"$extern_to_right"\
	# 	-B "[ ] [*]" 	"$extern_to_left"\
	# 	-B "[*] [*]" 	"$mirror_screen"\
	# 	-B "   ⚙   " 	"arandr"
	bash ~/.config/rofi/applets/bin/monitor.sh 2 1
	#when is done, background will be broken, reload background can fix this
	feh --bg-scale --zoom fill --randomize ~/wp
else
	#if no external output, set primary by default
	$(default)
	echo no external output found, set primary by default
fi
