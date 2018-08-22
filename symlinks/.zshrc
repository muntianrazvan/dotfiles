export ZSH=$HOME/.dotfiles/lib/oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
    encode64
    git
    tmux
    vscode
)

# Userful aliases
source ~/.dotfiles/system/.alias

# Private/local settings
[[ -f ~/.dotfiles/system/.private ]] && source ~/.dotfiles/system/.private

source $ZSH/oh-my-zsh.sh
