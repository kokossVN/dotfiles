#!/usr/bin/env bash

if [[ -z $@ ]]; then
	exit 1
fi
#put all parameter in to new array
item=("$@")
#then remove last parameter
unset "item[${#item[@]}-1]" 

#take last item in parameter 
for last in $@; do
	true
done

if [[ ! -e $last && $last = */ ]]; then
	echo "Not found ./$last/"
	read -p "Wanna Create? [Yy*|Nn]"
	case $REPLY in
		N | n )
			exit 1
			;;
		Y | y | * )
			mkdir $last
			mv ${item[@]} ./$last
			;;
	esac
else
	mv $@
fi


