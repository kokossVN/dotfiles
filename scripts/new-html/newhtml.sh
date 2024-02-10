#!/bin/sh

this_location=$(dirname "$0")

source "$this_location/css_js.sh"
source "$this_location/create.sh"
source "$this_location/from_template.sh"
source "$this_location/superhtml.sh"

#setting command parameter
double_double_check $@

while [ true ]; do
	case $1 in
	-i)
		echo "import file"
		shift 1
		while [[ true ]]; do
			if
				[[ -e $1 || ! -z $1 &&
					$1 = *.css || $1 = *.js
				]]
			then
				html_push $1
				shift 1
			else
				break
			fi
		done
		;;
	-cp)
		shift 1
		echo "copy form $1"
		TEMPLATE_FILE="$1"
		shift 1
		;;
	-t)
		shift 1
		custom_title
		;;
	*)
		push_resault
		file_name_check $1
		link_push_to_array
		html_create
		ask_for_open_nvim
		exit 0
		;;
	esac
done
