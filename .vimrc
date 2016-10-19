"""Plugins"""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Vundle — For managing plugins and runtime files"
Plugin 'VundleVim/Vundle.vim'
"Airline — For a better statusline and tabline"
Plugin 'vim-airline/vim-airline'
"Airline Themes — For themes for Airline"
Plugin 'vim-airline/vim-airline-themes'
"Syntastic — For syntax checking"
Plugin 'scrooloose/syntastic'
"Fugitive — For Git functionality within Vim"
Plugin 'tpope/vim-fugitive'
"GitGutter — For Git diff in the gutter, and hunk functionality"
Plugin 'airblade/vim-gitgutter'
"DelimitMate — For auto-completion of quotes, parenthesis, brackets, and so on"
Plugin 'Raimondi/delimitMate'
"Supertab — For general insert completion"
Plugin 'ervandew/supertab'
"NERD Tree — For a filesystem explorer within Vim"
Plugin 'scrooloose/nerdtree'
"Undotree — For visualizing the undo tree"
Plugin 'mbbill/undotree'
"Tagbar — For browsing tags and viewing the outline"
Plugin 'majutsushi/tagbar'
"jay — My own colorscheme"
Plugin 'josuegaleas/jay'

call vundle#end()
filetype plugin indent on

"""Airline Preferences"""
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='jay'
let g:airline#extensions#whitespace#checks=['indent', 'trailing']

"""Syntastic Preferences"""
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

"""GitGutter Preferences"""
let g:gitgutter_override_sign_column_highlight=0

"""DelimitMate Preferences"""
let delimitMate_expand_cr=1

"""Key Mappings"""
"Spell-checking"
noremap <leader>sc :setlocal spell!<cr>
"Paste-mode"
noremap <leader>pm :set paste!<cr>
"Unhighlight"
noremap <leader>uh :nohlsearch<cr>
"NERD Tree"
noremap <leader>nt :NERDTreeToggle<cr>
"Undotree"
noremap <leader>cz :UndotreeToggle<cr>
"Tagbar"
noremap <leader>tb :TagbarToggle<cr>

"""General"""
set t_Co=256
set encoding=utf8
"Colorscheme"
colorscheme jay
"Functionality"
set backspace=indent,eol,start
set whichwrap+=<,>,h,l,[,]
"Searching"
set incsearch
set hlsearch
"Indenting"
set smartindent
set autoindent
"UI"
syntax on
set relativenumber
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
