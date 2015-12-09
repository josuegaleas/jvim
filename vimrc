"""General"""
"Colorscheme"
set t_Co=256
set encoding=utf8
let g:rehash256=1
colorscheme molokai
"Functionality"
set backspace=indent,eol,start
set whichwrap+=<,>,h,l,[,]
"Searching"
set incsearch
set hlsearch
"Indenting"
set smartindent
set autoindent
"Spell-checking"
map <Leader>sc :setlocal spell!<cr> "toggle spell-checking with \sc"
"UI"
set number
set cursorline
set wildmenu
set lazyredraw
set showmatch
set list lcs=tab:\|\ "<- there is a space here"
"Tabbing"
set tabstop=4
set shiftwidth=4
"Folding"
set foldmethod=indent

"""Pathogen"""
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on
execute pathogen#helptags()

"""Airline"""
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'raven'

"""Syntastic"""
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""GitGutter"""
let g:gitgutter_override_sign_column_highlight = 0
