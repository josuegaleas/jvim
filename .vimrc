" =============================================================================
" Author: josuegaleas
" Source: https://github.com/josuegaleas/jvim
" Last Edit: 2018.06.23
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

" Vim Preferences:
if !has('gui_running')
	set t_Co=256
endif
set encoding=utf8
" Appearance
set background=dark
colorscheme jay
set laststatus=2
set wildmenu
set noshowmode
set cursorline
set showmatch
set list listchars=tab:\|\ ,
set showtabline=2
" Indents
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
" Number Line
set number
" Searches
set incsearch
set hlsearch
" Splits
set splitbelow
set splitright
" Other
set backspace=indent,eol,start
set scrolloff=2
set foldmethod=indent
set lazyredraw
set updatetime=100

" Plugin Preferences:
" vim-airline Preferences
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='jay'

" vim-gitgutter Preferences
let g:gitgutter_override_sign_column_highlight=0

" delimitMate Preferences
let delimitMate_expand_cr=1

" Key Mappings:
" Spell Checking
nnoremap <leader>sc :setlocal spell!<cr>
" Paste Mode
nnoremap <leader>pm :set paste!<cr>
" Un-highlight
nnoremap <leader>uh :nohlsearch<cr>
