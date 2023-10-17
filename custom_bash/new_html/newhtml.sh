#!/bin/sh

OUTPUT=

source "./css_js.sh"
source "./create.sh"
source "./from_template.sh"
source "./superhtml.sh"


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
		-F)
			shift 1
			echo "create html file form $1"
			shift 1
			;;
		-o)
			shift 1
			OUTPUT=$1
			echo "created $1"
			;;
		*)
			echo "css: ${css_list[@]}"
			echo "js: ${js_list[@]}"
			echo "other (skip): ${other_list[@]}"
			echo "ok"
			break
			;;
	esac
done








