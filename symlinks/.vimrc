set nocompatible

" Plugins

" ctrlp plugin http://ctrlpvim.github.io/ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Display line number
set number

" Display ruler - current line/character
set ruler

" Syntax color true by default
syntax enable
filetype plugin on

" Disable backup files
set nobackup

highlight EndOfBuffer ctermfg=black ctermbg=black

" Set tab behaviour: when pressed insert 4 spaces
set tabstop=4 expandtab

" Disable ctrlp search in node_modules
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

set wildmenu
