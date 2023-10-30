#!/bin/sh


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
				if [[ -e $1]]; then
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
		-cp)
			shift 1
			echo "copy form $1"
			HTML_TEMPLATE="$1"
			shift 1
			;;
		-t)
			shift 1
			custom_title
			;;
		-o)
			shift 1
			file_output_check $1
			;;
		*)
			echo "===================================="
			echo ""
			echo "css: ${css_list[@]}"
			echo "js: ${js_list[@]}"
			echo "other (skip): ${other_list[@]}"
			file_name_check $1
			link_push_to_array
			html_create
			nvim $OUTPUT
			exit 0
			;;
	esac
done







