#!/usr/bin/env bash
source "$DOTFILES_CUSTOM_BASH/java_proj/java_proj_lib.sh"

function menu() {
	echo "Java Project Manager by Kokoss"
	START_UP
}

[ -z $@ ] && menu

[[ $1 = make ]] && CREATE_PROJECT