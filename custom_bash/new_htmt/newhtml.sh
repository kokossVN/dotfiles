#!/bin/sh
source "./css_js.sh"



#setting command parameter
while true; do
	case $1 in
		-i)
			echo "import file"
			shift 1
			while [[ true ]]; do
				if [[ -e $1 && -z $i ]]; then
						html_push $1
						shift 1
					else
						break
				fi
			done
			;;
		!)
			echo "SUPER COMMANDDDDDDDDDDD"
			break
			;;
		*)
			echo "css: ${css_list[@]}"
			echo "js: ${js_list[@]}"
			echo "ok"
			break
			;;
	esac
done





