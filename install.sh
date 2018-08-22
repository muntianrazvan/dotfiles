#!/usr/bin/env bash

# Brew install
brew install git
brew install youtube-dl
brew install zsh

# Symlinks
ln -s "~/.dotfiles/symlinks/.bash_profile" ~/.bash_profile
ln -s "~/.dotfiles/symlinks/.zshrc" ~/.zshrc

# Set zsh as default as default shell
zsh_path=$(which zsh)
chsh -s "$zsh_path" $USER
