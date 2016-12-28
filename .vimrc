" =============================================================================
" Author: josuegaleas
" Source: https://github.com/josuegaleas/jvim
" Last Edit: December 28th, 2016
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
" Plugin 'itchyny/lightline.vim'
Plugin 'josuegaleas/jay'
Plugin 'octol/vim-cpp-enhanced-highlight'
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
Plugin 'JamshedVesuna/vim-markdown-preview'
" Colorscheme Tools
Plugin 'tomasr/molokai'
Plugin 'guns/xterm-color-table.vim'
Plugin 'chrisbra/Colorizer.git'
Plugin 'gerw/vim-HiLinkTrace'
" Environment
Plugin 'edkolev/promptline.vim'

call vundle#end()
filetype plugin indent on

" vim-airline Preferences
set showtabline=2
set laststatus=2
set noshowmode
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='jay'
let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing' ]

" lightline.vim Preferences
let g:lightline = {'colorscheme': 'jay'}
" source ~/.jayll.vim

" vim-gitgutter Preferences
let g:gitgutter_override_sign_column_highlight=0

" delimitMate Preferences
let delimitMate_expand_cr=1

" Syntastic Preferences
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" vim-markdown-preview Preferences
let vim_markdown_preview_github=1

" promptline.vim Preferences
let g:promptline_preset = {
	\'a': [ '\@', promptline#slices#host(), promptline#slices#user() ],
	\'b': [ promptline#slices#vcs_branch(), promptline#slices#git_status() ],
	\'c': [ promptline#slices#cwd() ],
	\'warn': [ promptline#slices#last_exit_code(), promptline#slices#battery({ 'threshold': 25 }) ]}

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
" Colorscheme Tools
noremap <leader>hg :help highlight-groups<cr>
noremap <leader>gn :help group-name<cr>
noremap <leader>hit :source $VIMRUNTIME/syntax/hitest.vim<cr>
" Other
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap L A
noremap H ^

""" General: """
if has('gui_running')
	set guifont=Hack:h11
endif
if !has('gui_running')
	set t_Co=256
endif
set colorcolumn=100
set encoding=utf8
" Colorscheme
syntax on
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
