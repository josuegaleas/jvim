""" Plugins: """
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Appearance
Plugin 'vim-airline/vim-airline'
Plugin 'josuegaleas/jay'
" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
" Autocompletion
Plugin 'ervandew/supertab'
Plugin 'Raimondi/delimitMate'
" Other Tools
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'mbbill/undotree'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-commentary'

call vundle#end()
filetype plugin indent on

" Airline Preferences
set laststatus=2
set noshowmode
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='jay'
let g:airline#extensions#whitespace#checks=['indent', 'trailing']

" GitGutter Preferences
let g:gitgutter_override_sign_column_highlight=0

" DelimitMate Preferences
let delimitMate_expand_cr=1

" Syntastic Preferences
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

""" Key Mappings: """
" Spell Checking
noremap <leader>sc :setlocal spell!<cr>
" Paste Mode
noremap <leader>pm :set paste!<cr>
" Unhighlight
noremap <leader>uh :nohlsearch<cr>
" NERD Tree
noremap <leader>nt :NERDTreeToggle<cr>
" Undotree
noremap <leader>cz :UndotreeToggle<cr>
" Tagbar
noremap <leader>tb :TagbarToggle<cr>

""" General: """
if !has('gui_running')
	set t_Co=256
endif
set encoding=utf8
" Colorscheme
colorscheme jay
" Functionality
set backspace=indent,eol,start
set whichwrap+=<,>,h,l,[,]
" Searching
set incsearch
set hlsearch
" Indenting
set smartindent
set autoindent
" UI
syntax on
set relativenumber
set number
set cursorline
set wildmenu
set lazyredraw
set showmatch
set list lcs=tab:\|\ "<- there is a space here"
" Tabbing
set tabstop=4
set shiftwidth=4
" Folding
set foldmethod=indent
