#!/bin/bash


# initial array
css_list=()
js_list=()
other_list=()
not_found_list=()

css=()
js=()


# push item into array

html_push() {
	# check if file not exist then comfirm to create
	if [[ ! -e $1 ]]; then
		not_found_list+=("$1")
	fi
	# sort list
	if [[ $1 = *.css ]]; then
			css_list+=("$1")
	elif [[ $1 = *.js ]]; then
			js_list+=("$1")
	else
			other_list+=("$1")
	fi 
}

push_resault() {
	# for comfirm
	echo ""
	echo "==========Import list=========="
	echo "css: ${css_list[@]}"
	echo "js: ${js_list[@]}"
	echo "other (skip): ${other_list[@]}"
	echo "==============================="
	if [[ ! -z ${not_found_list[@]} ]]; then
		echo "not found: ${not_found_list[@]}"
		read -p "Wanna create them [*Yy|Nn]  " aws
		case $aws in
			n|N)
				echo "then why you type in ???"
				not_found_list_remove
				;;
			y|Y|*)
				not_found_list_create
				;;
		esac
	fi
}

# then make tag
# this array will push into  target HTML file after all
#if found template file, all array will push into sed cmd


link_push_to_array(){
	if [[ ! -z $TEMPLATE_FILE ]]; then
		sed_css=()
		sed_js=()
		for css_file in "${css_list[@]}" ; do
				sed_css+=" \\t\<link rel=\"stylesheet\" href=\"$css_file\"\>\\n"	
		done

		for js_file in "${js_list[@]}" ; do
			sed_js+=" \\t\<script src=\"$js_file\"></script>\\n"
		done
	else
		for css_file in "${css_list[@]}" ; do
				css+="
				<link rel=\"stylesheet\" href=\"$css_file\">"	
		done

		for js_file in "${js_list[@]}" ; do
			js+="
			<script src=\"$js_file\"></script>"
		done
	fi
}


not_found_list_create() {
	for not_found_item in ${not_found_list[@]}; do
		if [[ $not_found_item = *.html ]]; then
			echo "skip $not_found_item"
			continue
		fi
		touch $not_found_item
	done
}

not_found_list_remove() {
	for not_found_item in ${not_found_list[@]}; do
		if [[ $not_found_item  = *.js ]]; then
			js_list=(${js_list[@]/$not_found_item})
		elif [[ $not_found_item = *.css ]]; then
			css_list=(${css_list[@]/$not_found_item})
		fi
	done
}
