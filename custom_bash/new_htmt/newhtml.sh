#!/bin/sh
#html v0.2
#i have no idea what im doin


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
