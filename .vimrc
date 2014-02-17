set nocompatible
set rtp+=~/.vim/bundle/vundle/
filetype off
filetype plugin indent on
call vundle#rc()
map :nt :NERDTree
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'klen/python-mode'
