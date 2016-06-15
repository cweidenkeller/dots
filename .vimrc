autocmd! bufwritepost .vimrc source % "Auto reload vimrc
set nocompatible "Disable vicompat mode
set rtp+=~/.vim/bundle/vundle/ "Src vundle
set clipboard=unnamed "Make clipboard act normal.
set history=1000 "More history.
set undolevels=1000 "More undos.
set encoding=utf-8
filetype plugin indent on "No Idea
syntax on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nobackup "No backupfile.
set nowritebackup "No write backup.
set noswapfile "No .swp no more.
set laststatus=2 "Set Line status 2.
set wildignore+=*.pyc "Ignore dem pyc's
set t_Co=256 "256 Colors yo
let g:ctrlp_max_height = 30
let mapleader = "," "More Keybinds.
"Enable folding
set foldmethod=indent
set foldlevel=99
"Enable folding with the spacebar
nnoremap <space> za
let g:SimpylFold_docstring_preview=1
"Airline options
"Quit this window.
noremap <Leader>e :quit<CR>
"Quit this vim session.
noremap <Leader>E :qa!<CR>
"Less Typing more NERDTree!
noremap <Leader>o :NERDTree<CR>
"Tab Window movement.
map <Leader>n :tabnext<CR>
map <Leader>m :tabprevious<CR>
"Fix Split window movement
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
"Vim-Airline options
let g:airline_theme= "laederon"
let g:airline_left_sep= "\u2188"
let g:airline_right_sep= "\u2188"
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.whitespace = "\u039E"
let g:airline_symbols.branch = "\u2387"
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = '~'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"Fast sort.
vnoremap <Leader>s :sort<CR>
"Quick indent and keep selection.
vnoremap < <gv
vnoremap > >gv
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

call vundle#rc() "Call vundle to bootstrap it.
""""""""""""
"VimPlugins"
""""""""""""
"Vundle git repo
Plugin 'VundleVim/Vundle.vim'
"Fugitive git repo
Plugin 'tpope/vim-fugitive'
"Vim git git repo.
Plugin 'tpope/vim-git'
"NERDTree git repo.
Plugin 'scrooloose/nerdtree'
"Syntastic git repo.
Plugin 'scrooloose/syntastic'
"YouCompleteMe git repo.
Plugin 'Valloric/YouCompleteMe'
"Vim air-line git repo.
Plugin 'vim-airline/vim-airline'
"Vim air-line-themes git repo.
Plugin 'vim-airline/vim-airline-themes'
"ctrlp git repo.
Plugin 'kien/ctrlp.vim'
"pep 8 git repo.
Plugin 'nvie/vim-flake8'
"fold my code please.
Plugin 'tmhedberg/SimpylFold'
"Smart python auto indent.
Plugin 'vim-scripts/indentpython.vim'
"Zen Burn color scheme
Plugin 'jnurmine/Zenburn'
