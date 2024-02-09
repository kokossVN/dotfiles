#!/usr/bin/env bash

CONFIG_FOLDER=($(ls $DOTFILES/config/))
for item in ${CONFIG_FOLDER[@]}; do
	echo "ln -sf $DOTFILES/config/$item $HOME/.config/$item"
	ln -sf $DOTFILES/config/$item $HOME/.config/$item
done
