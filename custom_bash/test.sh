#!/bin/sh



if [ -z "$*" ]
then
	echo wtf is notting ???
	read -p "Type your massage"
	mess=$REPLY
else
	mess="$*"
fi



echo "$mess"
