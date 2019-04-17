#!/usr/bin/env bash

# Brew install
brew install git
brew install pgcli
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

# Create folders if not exist
mkdir -p ~/.vim/bundle

# Clone vim plugins
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/bundle/typescript-vim

# Set zsh as default as default shell
zsh_path=$(which zsh)
chsh -s "$zsh_path" $USER
