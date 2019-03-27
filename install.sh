#!/usr/bin/env bash

# Brew install
brew install git
brew install tmux
brew install tree
brew install vim
brew install youtube-dl
brew install zsh

# Symlinks
ln -sf ~/.dotfiles/symlinks/.bash_profile ~/.bash_profile
ln -sf ~/.dotfiles/symlinks/.tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/symlinks/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/symlinks/.zshrc ~/.zshrc

# Clone vim plugins
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim

# Set zsh as default as default shell
zsh_path=$(which zsh)
chsh -s "$zsh_path" $USER
