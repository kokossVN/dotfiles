#!/usr/bin/env bash

# Import Current Theme
type="$HOME/.config/rofi/applets/type-$1"
style="style-$2.rasi"
theme="$type/$style"
#
DISPLAY_LIST=($(xrandr | grep -w 'connected' | awk '{print $1}'))

# Theme Elements
prompt="Screen mode"
mesg="Screen connected (Main Screen: ${DISPLAY_LIST[0]}): $(echo ${DISPLAY_LIST[@]} |
	sed 's/\ /\,/g')"
OPT_LIST=()
layout=$(cat ${theme} | grep 'USE_ICON' | cut -d'=' -f2)
if [[ "$layout" == 'NO' ]]; then
	# option_1="󰷜 ${DISPLAY_LIST[0]}"
	# if [[ ! -z ${DISPLAY_LIST[1]} ]]; then
	# 	option_2="󰍺 Mirror Screen"
	# 	option_3="󰷜 ${DISPLAY_LIST[1]}"
	# 	option_4="󰷜 󰍹 ${DISPLAY_LIST[0]} ${DISPLAY_LIST[1]}"
	# 	option_5="󰍹 󰷜 ${DISPLAY_LIST[1]} ${DISPLAY_LIST[0]}"
	# fi
	# option_6=" Setting"
	# yes=' Yes'
	# no=' No'
	OPT_LIST+=("󰷜 ${DISPLAY_LIST[0]} ")
	if [[ ! -z ${DISPLAY_LIST[1]} ]]; then
		OPT_LIST+=("󰍺 Mirror Screen ")
		OPT_LIST+=("󰍹 ${DISPLAY_LIST[1]} ")
		OPT_LIST+=("󰷜 󰍹 ${DISPLAY_LIST[0]} ${DISPLAY_LIST[1]} ")
		OPT_LIST+=("󰍹 󰷜 ${DISPLAY_LIST[1]} ${DISPLAY_LIST[0]} ")
	fi
	OPT_LIST+=(" Setting ")
else
	OPT_LIST+=("󰷜 ")
	if [[ ! -z ${DISPLAY_LIST[1]} ]]; then
		OPT_LIST+=("󰍺")
		OPT_LIST+=("󰍹")
		OPT_LIST+=("󰷜 󰍹")
		OPT_LIST+=("󰍹 󰷜")
	fi
	OPT_LIST+=("")
	yes=''
	no=''
fi
if [[ ("$theme" == *'type-1'*) || ("$theme" == *'type-3'*) || ("$theme" == *'type-5'*) ]]; then
	list_col='1'
	list_row=$(echo "${#OPT_LIST[@]} + 1" | bc)
elif [[ ("$theme" == *'type-2'*) || ("$theme" == *'type-4'*) ]]; then
	list_col=$(echo "${#OPT_LIST[@]} + 1" | bc)
	list_row='1'
fi

#
#Prefix command
rofi_cmd() {
	rofi -theme-str "listview {columns: $list_col; lines: $list_row;}" \
		-theme-str 'textbox-prompt-colon {enabled: false;}' \
		-dmenu \
		-p "$prompt" \
		-mesg "$mesg" \
		-markup-rows \
		-theme ${theme} \
		-kb-row-down 'l,j' \
		-kb-row-up 'h,k'
}

# Pass variables to rofi dmenu
run_rofi() {
	printf '%s\n' "${OPT_LIST[@]}" | rofi_cmd
}
#
# Execute Command

# Actions
dosmt() {
	if [[ -z ${DISPLAY_LIST[1]} ]]; then
		case "$1" in
		${OPT_LIST[0]})
			echo "Nothing :D"
			;;
		${OPT_LIST[1]})
			arandr
			;;
		*)
			exit 1
			;;
		esac
	else
		case "$1" in
		${OPT_LIST[0]})
			echo "Nothing :D"
			;;
		${OPT_LIST[1]})
			echo "opt 1"
			;;
		${OPT_LIST[2]})
			echo "opt 2"
			;;
		${OPT_LIST[3]})
			echo "opt 3"
			;;
		${OPT_LIST[4]})
			echo "opt 4"
			;;
		${OPT_LIST[5]})
			arandr
			;;
		*)
			exit 1
			;;
		esac
	fi
}
echo ${#OPT_LIST[@]}
chosen="$(run_rofi)"
dosmt "$chosen"
