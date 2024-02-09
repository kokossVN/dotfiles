
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/.bashrc		#link bashrc
# Download Znap, if it's not there yet.
[[ -r ~/Repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap
source ~/Repos/znap/znap.zsh  # Start Znap
export DOTFILES="$HOME/dotfiles/"
export ZSH="$HOME/.oh-my-zsh"
export FZF_DEFAULT_OPTS="--layout=reverse
--info=inline
--height=80%
--no-multi
--preview='bat {}'
--preview-window='right:40%:hidden'
--color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:008'
--prompt='∼ '
--pointer='▶'
--marker='✓'
--bind 'ctrl-t:toggle-preview'
--bind 'ctrl-s:toggle-sort'
"

ZSH_THEME="powerlevel10k/powerlevel10k"
export EDITOR=nvim;

plugins=(
  git
  bundler
  # dotenv
  rake
  rbenv
  ruby
  zsh-autosuggestions
  fzf-zsh-plugin
)

source $ZSH/oh-my-zsh.sh
source ~/dotfiles/bash_customalias.sh
source ~/dotfiles/.env
export PATH="$HOME/.tmuxifier/bin:$PATH"
export QT_FONT_DPI=96
# fix Fcitx5
export GTK_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export QT_IM_MODULE=fcitx

#fix Wayland
export QT_QPA_PLATFORM=wayland
export XDG_CURRENT_DESKTOP=Hyprland
export MOZ_ENABLE_WAYLAND=1

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6272A4,underline"

eval "$(zoxide init zsh)"
eval "$(tmuxifier init -)"
return 0

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
