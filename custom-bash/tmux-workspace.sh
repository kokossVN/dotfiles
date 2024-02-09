#!/usr/bin/env bash
TMUXIFIER_LAYOUTS="$TMUXIFIER/layouts"
TMUXIFIER_TEMP="$TMUXIFIER/templates"
INIT_PATH="$HOME/workspace"
TEMPLATE_LIST="none $(ls $TMUXIFIER_TEMP | sed 's/.sh//g') "
TYPE_LIST="none other c php web java" #idk just a list lang or smt important
TMUX_TOOLS="new-session* delete* edit* copy* kill*"

space_remove() { # Shortcut
	sed 's/\ /\n/g'
}

output() {
	sed "s/{{SESSION_NAME}}/$1/g" >"$TMUXIFIER_LAYOUTS/$1.session.sh"
}

work_path() {

	echo "mkdir $INIT_PATH/$1"
	mkdir "$INIT_PATH/$1" || echo "or... this folder exist...nahh i dont care"
	sed -i "1isession_root \"$INIT_PATH/$1\"" "$TMUXIFIER_LAYOUTS/$1.session.sh"
}

using_template() {
	INPUT=$(echo ${TEMPLATE_LIST[@]} | space_remove |
		fzf --no-multi --header "Select Template (v = vertical, h = horizontal, p = pane):")
	[[ -z $INPUT ]] && exit 1
	case "$INPUT" in
	none)
		echo "Using default template"
		sleep 2
		echo "tmuxifier ns $1" # for debug
		cat "$TMUXIFIER_TEMP/session.sh" | output $1
		work_path $1
		tmuxifier es $1
		;;
	*)
		echo "Using $INPUT layout"
		sleep 2
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

#show tmux list-sessions and * for tools
INPUT=$(fzf_input "Select workspace" "${TMUX_TOOLS[@]}")
# exit if empty
[[ -z $INPUT ]] && exit 1
case "$INPUT" in
new-session*)
	TYPE_INPUT=$(echo ${TYPE_LIST[@]} | my_fzf "Workspace type:")
	[[ -z $TYPE_INPUT ]] && exit 1
	if [[ $TYPE_INPUT = other ]]; then
		read -p "type name:" TYPE_INPUT
	fi
	[[ $TYPE_INPUT = none ]] && TYPE_OUTPUT="" || TYPE_OUTPUT="$TYPE_INPUT-"
	read -p "Workspace name: $TYPE_OUTPUT" WS_INPUT
	INPUT="$TYPE_OUTPUT$WS_INPUT"
	using_template $INPUT
	;;
delete*)
	INPUT=$(echo $(ls $TMUXIFIER_LAYOUTS) | my_fzf "Delete file:")
	[[ -z $INPUT ]] && exit 1
	echo "rm $TMUXIFIER_LAYOUTS/$INPUT"
	rm $TMUXIFIER_LAYOUTS/$INPUT
	;;
edit*)
	tmuxifier es $(fzf_input "Edit Workspace")
	;;
copy*) ;;
kill*)
	echo "tmux kill-server"
	tmux kill-server
	;;
*)
	tmuxifier s $INPUT
	;;
esac
