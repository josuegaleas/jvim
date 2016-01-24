"""Pathogen"""
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on
execute pathogen#helptags()

"""Airline"""
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='distinguished'

"""Syntastic"""
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

"""DelimitMate"""
let delimitMate_expand_cr = 1

"""NERDTree"""
map <leader>nt :NERDTreeToggle<cr>

"""Undotree"""
map <leader>cz :UndotreeToggle<cr>

"""General"""
set t_Co=256
set encoding=utf8
"Colorscheme"
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
map <Leader>sc :setlocal spell!<cr>
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
