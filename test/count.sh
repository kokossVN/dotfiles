#!/bin/sh

js_count=0

while [ true ]; do
	if [[ $1 = "-js" ]]
	then
		((++js_count))
		shift 1
	else
		break
	fi
done

for i in $js_count
do
done

echo "$js_count"
