#!/bin/sh



#setting command parameter
while [ true ]; do
	case $1 in
		-css)
			echo "this is css"
			break
			;;
		-js)
			echo "this is js"
			break
			;;
		!)
			echo "SUPER COMMANDDDDDDDDDDD"
			break
			;;
		*)
			echo "Command not found!"
			break
			;;
	esac
done
