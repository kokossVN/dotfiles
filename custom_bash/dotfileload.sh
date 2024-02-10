#!/usr/bin/env bash

DOTFILES=(alacritty betterlockscreen hypr i3 kitty neofetch polybar ranger rofi tmux waybar)

for item in ${DOTFILES[@]}; do
	if [[ ! $(test -e /home/kokoss/.config/$item) ]]; then
		echo "ln -sf /home/kokoss/dotfiles/$item /home/kokoss/.config/"
		ln -sf /home/kokoss/dotfiles/$item /home/kokoss/.config/
	fi
done

test -d /home/kokoss/.config/nvim ||
	ln -sf /home/kokoss/dotfiles/nvim_lazyvim/ /home/kokoss/.config/nvim
