#!/usr/bin/env bash
source "$DOTFILE_CUSTOM_BASH/java_proj/java_proj_lib.sh"

function menu() {
	START_UP
}

[ -z $@ ] && menu

[[ $1 = make ]] && CREATE_PROJECT
