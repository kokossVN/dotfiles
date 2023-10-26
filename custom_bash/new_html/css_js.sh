#!/bin/bash


# initial array
css_list=()
js_list=()
other_list=()

css=()
js=()


# push item into array

html_push() {
	if [[ "$(echo "$1" | grep -ic "\.css")" -eq 1 ]]; then
			echo "css found $1"
			css_list+=("$1")
		elif [[ "$(echo "$1" | grep -ic "\.js")" -eq 1 ]];
		then
			echo "js found $1"
			js_list+=("$1")
		else
			other_list+=("$1")
	fi 
}

# then make tag
# this array will push into  target HTML file after all
link_push_to_array(){
	for css_file in "${css_list[@]}" ; do
			css+="
			<link rel=\"stylesheet\" href=\"$css_file\">"	
	done

	for js_file in "${js_list[@]}" ; do
		js+="
		<script src=\"$js_file\"></script>"
	done
}

