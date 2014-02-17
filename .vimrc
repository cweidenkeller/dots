set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'snipMate'
Bundle 'klen/python-mode'
filetype plugin indent on
"Pthon Shizz
set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " an hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
