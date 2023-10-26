#!/usr/bin/env bash


get_name(){
	if [[ -e $1 && $(echo "$1" | grep -ic "\.html") -eq 1 ]]; then
		TEMPLATE_NAME="$1"
		echo "ok, this is html, create html form $TEMPLATE_NAME"
	else
		echo "missing or is not HTML, skip"
		exit 1
	fi
}

