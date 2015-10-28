autocmd! bufwritepost .vimrc source % "Auto reload vimrc
"Highlight trailing whitespace with red
"autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"au InsertLeave * match ExtraWhitespace /\s\+$/
"End Highlight trailing whitespace with red
set nocompatible "Disable vicompat mode
set rtp+=~/.vim/bundle/vundle/ "Src vundle
set clipboard=unnamed "Make clipboard act normal.
set history=1000 "More history.
set undolevels=1000 "More undos.
set tabstop=4 "Because python.
set softtabstop=4 "Because python.
set shiftwidth=4 "Because python.
set shiftround "Because python.
set expandtab "Because python.
set nobackup "No backupfile.
set nowritebackup "No write backup.
set noswapfile "No .swp no more.
set laststatus=2 "Set Line status 2.
set wildignore+=*.pyc "Ignore dem pyc's
set t_Co=256 "256 Colors yo
syntax on
let g:ctrlp_max_height = 30
let mapleader = "," "More Keybinds.
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
"Python-mode options.
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extend_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
"Fast sort.
vnoremap <Leader>s :sort<CR>
"Quick indent and keep selection.
vnoremap < <gv
vnoremap > >gv
filetype plugin indent on "No Idea
filetype off "No Idea
call vundle#rc() "Call vundle to bootstrap it.
""""""""""""
"VimPlugins"
""""""""""""
"Vundle git repo
Bundle 'VundleVim/Vundle.vim'
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
"Vim air-line git repo.
Bundle 'bling/vim-airline'
"ctrlp git repo.
Bundle 'kien/ctrlp.vim'
