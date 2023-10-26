#!/usr/bin/env bash

# custom title
custom_title() {
	read -p "Title name:" title
}


#name check
file_name_check() {
	if [[ -z $1 ]]; then
		if [[ -z $OUTPUT ]]; then
			read -p "File name: " 
			file_output_check $REPLY
		fi
	else
	file_output_check $1
	fi
}

file_output_check() {
	if [[ "$(echo "$1" | grep -ic "\.html")" -eq 1 ]]; then
		OUTPUT="$1"
	elif [[ 
		"$(echo "$1" | grep -ic "\.css")" -eq 1 ||
		"$(echo "$1" | grep -ic "\.js")" -eq 1 ]]
		then
			echo "WTF you mean?"
			exit 1
	else
		OUTPUT="$1.html"
	fi
	echo "Created $OUTPUT"
}

html_create() {
	if [[ -z $title ]]; then
		title=$(echo "${OUTPUT%*.html}") 
	fi
	if [[ -z $HTML_TEMPLATE  ]]; then
		echo \
		"<!DOCTYPE html>
		<html lang="en">
		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>$title</title>
			$css
		</head>
		<body>
			<p>Hello $OUTPUT</p>
			$js
		</body>
		</html>" > $OUTPUT
	else
		echo "Template help me do this sh*t"
	fi
}
