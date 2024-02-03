#!/usr/bin/env bash

TMUXIFIER_LAYOUTS="$TMUXIFIER/layouts"
TMUXIFIER_TEMP="$TMUXIFIER/templates"
INIT_PATH="$HOME/workspace"
space_remove() { # Shortcut
	sed 's/\ /\n/g'
}
output() {
	sed "s/{{SESSION_NAME}}/$1/g" >"$TMUXIFIER_LAYOUTS/$1.session.sh"
}

TEMPLATE_LIST="none v3 v3h5 h2p0v3 "

work_path() {

	echo "mkdir $INIT_PATH/$1"
	mkdir "$INIT_PATH/$1" || echo "or... this folder exist...nahh i dont care"
	sed -i "1isession_root \"$INIT_PATH/$1\"" "$TMUXIFIER_LAYOUTS/$1.session.sh"
}

using_template() {
	INPUT=$(echo ${TEMPLATE_LIST[@]} | space_remove |
		fzf --no-multi --header "Select Template (v = vertical, h = horizontal, p = pane):")
	case "$INPUT" in
	none)
		echo "Using default template"
		sleep 5
		echo "tmuxifier ns $1" # for debug
		cat "$TMUXIFIER_TEMP/session.sh" | output $1
		work_path $1
		tmuxifier es $1
		;;
	*)
		echo "Using $INPUT layout"
		cat "$TMUXIFIER_TEMP/$INPUT.sh" | output $1
		work_path $1
		tmuxifier es $1
		;;
	esac
}
fzf_input() {
	echo "$(tmuxifier list-sessions) $2" | #$2 is sub menu
		space_remove |
		fzf --no-multi --header "$1"
}
my_fzf() {
	space_remove | fzf --no-multi --header "$1"
}
