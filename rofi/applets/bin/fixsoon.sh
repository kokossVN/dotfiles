#!/usr/bin/env bash

for item in $@; do
	sed -i "s/#fixsoon/type=\"\$HOME\/.config\/rofi\/applets\/type-\$1\"\nstyle=\"style-\$2.rasi\"/g" $item
done
