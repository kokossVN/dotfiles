#!/usr/bin/env bash



#
file=($@)
sub_file=()

for i in ${file[@]}; do
	if [[ $(file $i | grep -ic "dir") -eq 1 ]]; then
		echo "$i is dir"
		sub_file+=($i/*)
	fi
done

echo "this folder: ${file[@]}"
echo "sub folder: ${sub_file[@]}"
