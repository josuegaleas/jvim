" =============================================================================
" Author: josuegaleas
" Source: https://github.com/josuegaleas/jvim
" Last Edit: November 26th, 2016
" Description: Yet another vimrc for Vim.
" =============================================================================

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

" vim-airline Preferences
set showtabline=2
set laststatus=2
set noshowmode
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='jay'

" vim-gitgutter Preferences
let g:gitgutter_override_sign_column_highlight=0

" delimitMate Preferences
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
" The NERD Tree
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
syntax on
set background=dark
colorscheme jay
" Functionality
set backspace=indent,eol,start
set whichwrap+=<,>,h,l,[,]
" Searches
set incsearch
set hlsearch
" Indents
set smartindent
set autoindent
" Number Line
set relativenumber
set number
" UI
set cursorline
set wildmenu
set lazyredraw
set showmatch
set list lcs=tab:\|\ "<- there is a space here
" Tabs
set tabstop=4
set shiftwidth=4
" Folds
set foldmethod=indent
