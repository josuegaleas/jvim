" =============================================================================
" Author: josuegaleas
" Source: https://github.com/josuegaleas/jvim
" Last Edit: June 11, 2017
" =============================================================================

" =============================================================================
" Plugins:
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
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-commentary'

call vundle#end()
filetype plugin indent on
" =============================================================================

" =============================================================================
" Vim Preferences:
if !has('gui_running')
	set t_Co=256
endif
set encoding=utf8
" Colorscheme
syntax enable
set background=dark
colorscheme jay
" Functionality
set backspace=indent,eol,start
" Searches
set incsearch
set hlsearch
" Indents
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
" Number Line
set number
" Status Line
set laststatus=2
set wildmenu
set noshowmode
" Scroll Off
set scrolloff=1
set sidescrolloff=5
" Splits
set splitbelow
set splitright
" UI
set cursorline
set lazyredraw
set showmatch
set list listchars=tab:\|\ ,
set showtabline=2
" Folds
set foldmethod=indent
" =============================================================================

" =============================================================================
" Plugin Preferences:
" vim-airline Preferences
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
" =============================================================================

" =============================================================================
" Key Mappings:
" Spell Checking
nnoremap <leader>sc :setlocal spell!<cr>
" Paste Mode
nnoremap <leader>pm :set paste!<cr>
" Unhighlight
nnoremap <leader>uh :nohlsearch<cr>
" The NERD Tree
nnoremap <leader>nt :NERDTreeToggle<cr>
" Tagbar
nnoremap <leader>tb :TagbarToggle<cr>
" =============================================================================
