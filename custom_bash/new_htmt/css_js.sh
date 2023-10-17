#!/bin/bash

css_list=()
js_list=()
css=()
js=()
html_push() {
	if [[ "$(echo "$1" | grep -ic "\.css")" -eq 1 ]]; then
			echo "$1 is css"
			css_list+=("$1")
		elif [[ "$(echo "$1" | grep -ic "\.js")" -eq 1 ]];
		then
			echo "$1 is js"
			js_list+=("$1")
	fi 
}

for css_file in "${css_list[@]}" ; do
		css+="
		<link rel=\"stylesheet\" href=\"$css_file\">"	
done

for js_file in "${js_list[@]}" ; do
	js+="
	<script src=\"$js_file\"></script>"
done



# debug
echo done
