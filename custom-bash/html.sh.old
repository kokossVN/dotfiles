#!/bin/sh

default_css="<link rel=\"stylesheet\" href=\"\">
	<style>
	</style>"

default_js="<script src=\"\">

	</script>"
#Option parameter
#option avalable: -css -js
#Examble :command -option1 -option2
#
while [ true ]; do
	case $1 in
		-css)
			if [[ -e $2 && ! -z $2 ]]
			then
				echo "added css link with $2"
				css="<link rel=\"stylesheet\" href=\"$2\">"
				shift 2
			elif [[ ! -e $2 && -z $2 && $2 = "-js" ]]
			then
				echo "found js, shift 1"
				css=$default_css
				shift 1
			else
				echo "added empty css link and style tag"
				css=$default_css
				shift 1
			fi
			;;
		-js)
			if [[ -e $2 && ! -z $2 ]]
			then
				echo "added script with src > $2"
				js="<script src=\"$2\"></script>"
				shift 2
			elif [[ ! -e $2 && -z $2 && $2 = "-css"  ]]
			then
				echo "found css, shift 1"
				js=$default_js
				shift 1
			else
				echo "added script tag with empty src"
				js=$default_js
				shift 1
			fi
			;;
		-t) 				#Type title if u want ( lol idky)
			title=5
			shift 1
			;;
		*)
			break
	esac
done

if [ -z $1 ]
then
	read -p "File Name: "
	if [ -z $REPLY ]
	then
		echo "nothing happend..."
		exit 0
	fi
	file=$REPLY
else
	file="$1"
fi

if [[ title -eq 5 ]]
then
	read -p "Title name: " title
else
	title=$file
fi

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
	<p>Hello $file.html</p>
	$js
</body>
</html>" > "$file".html


echo created "$file.html"

