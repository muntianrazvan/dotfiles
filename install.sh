#!/usr/bin/env bash

# Brew install
brew install git
brew install youtube-dl
brew install zsh

# Get current directory
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Symlinks
ln -s "$DOTFILES_DIR/symlinks/.bash_profile" ~/.bash_profile
ln -s "$DOTFILES_DIR/symlinks/.zshrc" ~/.zshrc

# Set zsh as default as default shell
zsh_path=$(which zsh)
chsh -s "$zsh_path" $USER
