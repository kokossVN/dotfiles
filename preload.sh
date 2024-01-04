dosmt() {
	echo "loaded"
	tmux new -d tmuxifier w smt
	PRELOADED=1
	export PRELOADED
}
[[ $(env | grep PRELOADED) = 0 ]] && dosmt
