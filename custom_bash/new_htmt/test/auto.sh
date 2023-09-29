#!/bin/sh


# get all file into array 
list=($(ls))
css=()
js=()

echo ${list[@]}

#then fill file to specific array
for i in ${!list[@]}; do
	echo ${list[$i]}
	if [[ ${list[$i]} = *.css ]]
	then
		css+=(${list[i]})
		echo ${list[$i]} is css
	elif [[ ${list[$i]} = *.js ]]
	then
		js+=(${list[$i]})
		echo ${list[$i]} is js
	fi
done

echo "total js is ${#js[@]}"
echo "total css is ${#css[@]}"

