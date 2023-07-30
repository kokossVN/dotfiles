#!/bin/sh


while [ true ]; do
	case $1 in 
		-css)
			if [ -e $2 ]
			then
				echo "add css with $2"
				css="<link rel=\"stylesheet\" href=\"$2\">"
				shift 2
			else
				echo "add css with style.css"
				css="<link rel=\"stylesheet\" href=\"style.css\">"
				shift 1
			fi
			;;
		-js)
			if [ -e $2 ]
			then
				echo "add js with $2"
				js="<script src=\"$2\"></script>"
				shift 2
			else
				echo "add js with script.js"
				js="<script src=\"script.js\"></script>"
				shift 1
			fi
			;;
		*)
			break
	esac
done

if [ -z $1 ]
then
	read -p "File Name: "
	mess=$REPLY
else
	mess="$1"
fi

#

echo \
"<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>$mess</title>
	$css
</head>
<body>
	<p>Hello $mess.html</p>
	$js
</body>
</html>" > "$mess".html


echo created "$mess.html"

