#!~/.bashrc
CURRENT_DEVICE=desktop
CUSTOM_BASH_LOCATION=~/dotfiles/custom_bash/

alias ta="tmux attach -t"
alias vim="nvim"
alias lolcat="$CUSTOM_BASH_LOCATION/center.python3 | lolcat"
alias .file="cd ~/dotfiles"
alias discord="flatpak run com.discordapp.Discord"
alias lazygit="$CUSTOM_BASH_LOCATION/lazygit.sh"
alias ls="lsd"
alias l="lsd -Fl"
alias ide="$CUSTOM_BASH_LOCATION/tmux-ide.sh"
alias tree="lsd --tree -X"
alias lazyweb="$CUSTOM_BASH_LOCATION/lazyweb.sh"
alias html="~/dotfiles/custom_bash/html.sh"
alias live-server="live-server --browser=min"
alias cexe="$CUSTOM_BASH_LOCATION/cexe.sh"
alias cppexe="$CUSTOM_BASH_LOCATION/cppexe.sh"

if [[ $CURRENT_DEVICE = desktop ]]
then
	alias system_blight="ddcutil setvcp 10"
	alias system_cont="ddcutil setvcp 12"
fi
