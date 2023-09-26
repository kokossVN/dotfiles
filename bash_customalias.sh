#!~/.bashrc
CURRENT_DEVICE=desktop

alias tmuxatk='tmux attach -t'
alias vim='nvim'
alias lolcat='~/dotfiles/custom_bash/center.python3 | lolcat'
alias .file='cd ~/dotfiles'
alias discord='flatpak run com.discordapp.Discord'
alias lazygit='~/dotfiles/custom_bash/lazygit.sh'
alias ls='lsd'
alias l='lsd -Fl'
alias ide='~/dotfiles/custom_bash/tmux-ide.sh'
alias tree="lsd --tree -X"
alias lazyweb="~/dotfiles/custom_bash/lazyweb.sh"
alias html="~/dotfiles/custom_bash/html.sh"
alias live-server="live-server --browser=min"

if [[ $CURRENT_DEVICE = desktop ]]
then
	alias system_blight="ddcutil setvcp 10"
	alias system_cont="ddcutil setvcp 12"
fi
