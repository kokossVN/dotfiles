#!/usr/bin/env bash

echo "Chose your tmux profile"
echo "*1) PC "
echo " 2) Laptop "
echo " 3) Remote-server "
read -p "Your chose: " NUMBER

case "$NUMBER" in
2)
	echo Laptop
	cp ~/dotfiles/tmux/tmux.conf.laptop ~/dotfiles/tmux/tmux.conf
	;;
3)
	echo Server
	cp ~/dotfiles/tmux/tmux.conf.server ~/dotfiles/tmux/tmux.conf
	;;
1 | *)
	echo PC
	cp ~/dotfiles/tmux/tmux.conf.pc ~/dotfiles/tmux/tmux.conf
	;;
esac
[[ $(alias) = *tmux* ]] && unalias tmux
[[ $TERM_PROGRAM = tmux ]] && tmux source ~/dotfiles/tmux/tmux.conf
[[ $TERM_PROGRAM = tmux ]] && tmux source ~/dotfiles/tmux/tmux.conf
