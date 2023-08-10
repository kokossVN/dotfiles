
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/.bashrc		#link bashrc
source ~/zsh-snap/znap.zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
EDITOR=nvim; export EDITOR

plugins=(
  git
  bundler
  dotenv
  macos
  rake
  rbenv
  ruby
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source ~/dotfiles/bash_customalias.sh
export PATH="$HOME/.tmuxifier/bin:$PATH"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6272A4,underline"

tmux source ~/.config/tmux/tmux.conf
# neofetch

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
