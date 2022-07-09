" =============================================================================
" Author: josuegaleas
" Source: https://github.com/josuegaleas/jvim
" Last Edit: 2022.05.01
" =============================================================================

" Plugins:
call plug#begin()

" Appearance
Plug 'josuegaleas/jay'
Plug 'sheerun/vim-polyglot'
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Other Tools
Plug 'ervandew/supertab'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
Plug 'ntpeters/vim-better-whitespace'
Plug 'LucHermitte/lh-vim-lib'
Plug 'LucHermitte/local_vimrc'
" Colorscheme Development
" Plug 'tomasr/molokai'
" Plug 'vim-airline/vim-airline'
" Plug 'itchyny/lightline.vim'
" Plug 'guns/xterm-color-table.vim'
" Plug 'chrisbra/Colorizer'
" Plug 'gerw/vim-HiLinkTrace'

call plug#end()

" Vim Preferences:
if !has('gui_running')
	set t_Co=256
endif
set encoding=utf8
" Appearance
set background=dark
" let jay_transparent=1
colorscheme jay
source ~/.jline.vim
set cursorline
set colorcolumn=80
set showmatch
set list listchars=tab:\|\ ,
set showtabline=2
" Indents
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
" Number Column
set number
set relativenumber
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

" lightline.vim Preferences
let g:lightline = {'colorscheme': 'jay'}

" ale Preferences
let g:ale_lint_on_text_changed = 'never'

" vim-better-whitespace Preferences
hi ExtraWhitespace guifg=NONE ctermfg=NONE guibg=#df5f5f ctermbg=167 gui=NONE cterm=NONE term=NONE

" local_vimrc Preferences
let g:local_vimrc = ['.clangflags.vim']
call lh#local_vimrc#munge('whitelist', $HOME.'/Projects')

" Key Mappings:
" Spell Checking
nnoremap <leader>sc :setlocal spell!<cr>
" Paste Mode
nnoremap <leader>pm :set paste!<cr>
" Un-highlight
nnoremap <leader>uh :nohlsearch<cr>
" ALE
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
" Colorscheme Development
nnoremap <leader>hg :help highlight-groups<cr>
nnoremap <leader>gn :help group-name<cr>
nnoremap <leader>hit :source $VIMRUNTIME/syntax/hitest.vim<cr>
" Disable Arrow Keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
