#!/usr/bin/env bash



source "$this_location/from_template.sh"
# custom title
custom_title() {
	read -p "Title name:" title
}


#name check
file_name_check() {
	if [[ $last = *.html ]]; then
		OUTPUT=$last
	fi
	if [[ -z $1 ]]; then
		if [[ -z $OUTPUT ]]; then
			read -p "File name: " 
			file_output_check $REPLY
		fi
	else
	file_output_check $1
	fi
}

#push func should be shift until next cmd parameter or 
#last element, this function will take lastest array
#for output check
double_double_check() {
	for last in $@ ; do
		true
	done
	echo " parameter $last"
}

#ask for name 
#its exit error if nothing in
file_output_check() {
	if [[ $1 = *.html ]]; then
		OUTPUT="$1"
	elif [[
		$1 = *.css ||
		$1 = *.js
		]];
		then
			echo "WTF you mean?"
			exit 1
	else
		OUTPUT="$1.html"
	fi
	echo "Created $OUTPUT"
}

#simple HTML template ( from VScode)
#with yzal tool
html_create() {
	if [[ -z $title ]]; then
		title=$(echo "${OUTPUT%*.html}") 
	fi
	if [[ ! -z $TEMPLATE_FILE  ]]; then
		echo "Template help me do this sh*t"
		template_do
	else
		echo \
		"<!DOCTYPE html>
		<html lang="en">
		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>$title</title>
			<!-- K_css_in -->
			$cssPluginConfigs/formater.lua
		</head>
		<body>
			<p>Hello $OUTPUT</p>
			$js
			<!-- K_js_in -->
		</body>
		</html>" > $OUTPUT
	fi
}

ask_for_open_nvim() {
	read -p "wanna open vim [yY*|nN] " aws
	case $aws in
		n|N)
			exit 0
			;;
		y|Y|*)
			nvim $OUTPUT
			;;
	esac

}
