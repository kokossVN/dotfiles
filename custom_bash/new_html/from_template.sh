#!/usr/bin/env bash

#make a copy
template_copy() {
	echo "copied from $TEMPLATE_FILE"
	cp $TEMPLATE_FILE $OUTPUT
}

# use sed to find and replace word in file in single commmand
find_and_replace() {
	sed -i "/<title>/c\ \\t\<title>$title</title>" $OUTPUT
	if [[ $(cat $OUTPUT | grep -ic "k_") -eq 2 ]]; then
		sed -i "/K_css/c\ $sed_css" $OUTPUT | sed ":a;N;$ba;s/\n/\n/g"
		sed -i "/K_js/c\ $sed_js" $OUTPUT | sed ":a;N;$ba;s/\n/\n/g"
	else
		if [[ ! -z $css_list ]]; then
		cat -n $OUTPUT
			read -p "Chose line for css" css_line
			if [[ -z css_line ]]; then
				css_line=7
			fi
			sed -i "$css_line i \ $sed_css " $OUTPUT | sed ":a;N;$ba;s/\n/\n/g"
		fi

		if [[ ! -z $js_list ]]; then
			read -p "Chose line for js" js_line
			if [ ! -z js_line]; then
				sed -i "$js_line i \ $sed_js " $OUTPUT | sed ":a;N;$ba;s/\n/\n/g"
			fi
		fi
	fi
}


#to-do function
template_do() {
	template_copy
	find_and_replace
}
