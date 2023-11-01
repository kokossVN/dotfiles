#!/bin/sh
nothing() {
	read -p "Commit message: [\"Smail change\"]:  "
	if [[ -z $REPLY ]]; then
		mess="Smail change"
		else
			mess="$REPLY"
	fi
	# case $REPLY in
	# 	n)
	# 		echo "canceled" 
	# 		exit 1
	# 		;;
	# 	*)
	# 		mess="smail change"
	# 		;;
	# esac
}
if [ -z "$*" ]
then
	nothing
else
	mess="$*"
fi

echo "$mess"
git add . && git commit -m "$mess" && git push
