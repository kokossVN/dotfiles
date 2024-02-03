#!/usr/bin/env bash
source "./src/init.sh"
TYPE_LIST="none other c php web java" #idk just a list lang or smt important
TMUX_TOOLS="new-session* delete* edit* copy* kill*"
#show tmux list-sessions and * for tools
#
INPUT=$(fzf_input "Select workspace" "${TMUX_TOOLS[@]}")
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
