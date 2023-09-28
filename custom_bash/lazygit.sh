#!/bin/sh
nothing() {
	read -p "There is no message, continue? [*Yy/Nn]"
	case $REPLY in
		n)
			echo "canceled" 
			;;
		*)
			mess="smail change"
			;;
	esac
}
if [ -z "$*" ]
then
	nothing
else
	mess="$*"
fi

echo "$mess"
git add . && git commit -m "$mess" && git push
