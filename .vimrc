autocmd! bufwritepost .vimrc source % "Auto reload vimrc
set nocompatible "Disable vicompat mode
set rtp+=~/.vim/bundle/vundle/ "Src vundle
filetype off "No Idea
filetype plugin indent on "No Idea
call vundle#rc() "Call vundle to bootstrap it.
"Less typing more NERDTree
map <C-n> :NERDTree
""""""""""""
"VimPlugins"
""""""""""""
"Vundle git repo
Bundle 'gmarik/vundle'
"Fugitive git repo
Bundle 'tpope/vim-fugitive'
"Vim git git repo.
Bundle 'tpope/vim-git'
"NERDTree git repo.
Bundle 'scrooloose/nerdtree'
"Syntastic git repo.
Bundle 'scrooloose/syntastic'
"Python-mode git repo.
Bundle 'klen/python-mode'
