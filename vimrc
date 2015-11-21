"""Pathogen"""
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on
"Suggested by Nazim"
call pathogen#helptags()

"""Airline"""
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'ubaryd'
"Extension Integration"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1

"""Syntastic"""
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""General"""
colorscheme molokai
"Functionality"
set backspace=indent,eol,start
set whichwrap+=<,>,h,l,[,]
"Searching"
set incsearch
set hlsearch
"Auto-indenting"
set smartindent
set autoindent
"Spell-checking"
set spell
"UI"
set number
set cursorline
set wildmenu
set lazyredraw
set showmatch
"Tabbing"
set tabstop=4
set shiftwidth=4
