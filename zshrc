
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/.bashrc		#link bashrc
# Download Znap, if it's not there yet.
[[ -r ~/Repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap
source ~/Repos/znap/znap.zsh  # Start Znap
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
export EDITOR=nvim;
export CUSTOM_BASH_LOCATION=~/dotfiles/custom_bash/

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
eval "$(zoxide init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

