" =============================================================================
" Author: josuegaleas
" Source: https://github.com/josuegaleas/jvim
" Last Edit: October 2, 2017
" =============================================================================

" =============================================================================
" Plugins:
call plug#begin()

" Appearance
Plug 'vim-airline/vim-airline'
Plug 'josuegaleas/jay'
Plug 'sheerun/vim-polyglot'
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Autocompletion
Plug 'ervandew/supertab'
Plug 'Raimondi/delimitMate'
" Other Plugins
Plug 'w0rp/ale'
Plug 'tpope/vim-commentary'

call plug#end()
" =============================================================================

" =============================================================================
" Vim Preferences:
if !has('gui_running')
	set t_Co=256
endif
set encoding=utf8
" Colorscheme
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
" =============================================================================

" =============================================================================
" Key Mappings:
" Spell Checking
nnoremap <leader>sc :setlocal spell!<cr>
" Paste Mode
nnoremap <leader>pm :set paste!<cr>
" Unhighlight
nnoremap <leader>uh :nohlsearch<cr>
" =============================================================================
