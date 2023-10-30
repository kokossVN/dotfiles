#!/usr/bin/env bash

js_value="<!-- this_comment_for_js_import -->"
css_value="<!-- this_comment_for_css_import -->"

get_temp(){
	if [[ -e $1 && $(echo "$1" | grep -ic "\.html") -eq 1 ]]; then
		TEMPLATE_FILE="$1"
	else
		echo "missing or is not HTML, skip"
		exit 1
	fi
}

copy() {
	cp $TEMPLATE_FILE $OUTPUT
}

find_and_replace() {
	if [[ $(cat $OUTPUT | grep -ic "$css_value" -eq 1 )]]; then
		echo "message"
	fi
}




