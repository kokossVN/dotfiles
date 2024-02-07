#!/usr/bin/env bash

read -p "find: " FIND
read -p "replace: " REPLACE

for item in $@; do
	echo "mv $item \$(echo $item | sed \"s/$FIND/$REPLACE/g\")"
	mv $item $(echo $item | sed "s/$FIND/$REPLACE/g")
done
