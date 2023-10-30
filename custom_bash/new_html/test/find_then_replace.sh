#!/usr/bin/env bash

js_value="<!-- this_comment_for_js_import -->"
css_value="<!-- this_comment_for_css_import -->"


echo "css in"
cat $1 | grep -ic "$css_value"

echo "js in"
cat $1 | grep -C 2 -n "$js_value"



read -p "continue? [Yy*/Nn]" ans

case $ans in 
	y | Y | *)
		sed -i -e "s/$css_value/next/g" $1
		sed -i -e "s/$js_value/next/g" $1
		;;
	n | N )
		echo "quit"
		exit 0
		;;
esac




