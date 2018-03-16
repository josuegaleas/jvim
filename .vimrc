" =============================================================================
" Author: josuegaleas
" Source: https://github.com/josuegaleas/jvim
" Last Edit: 2018.03.16
" =============================================================================

" Plugins:
call plug#begin()

" Appearance
" Plug 'vim-airline/vim-airline'
" Plug 'itchyny/lightline.vim'
Plug 'josuegaleas/jay'
Plug 'sheerun/vim-polyglot'
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Autocompletion
Plug 'ervandew/supertab'
Plug 'Raimondi/delimitMate'
" Other Tools
Plug 'w0rp/ale'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-commentary'
Plug 'ntpeters/vim-better-whitespace'
Plug 'JamshedVesuna/vim-markdown-preview'
" Colorscheme Tools
" Plug 'guns/xterm-color-table.vim'
" Plug 'chrisbra/Colorizer'
" Plug 'gerw/vim-HiLinkTrace'
" Environment
" Plug 'edkolev/promptline.vim'

call plug#end()

" Vim Preferences:
if !has('gui_running')
	set t_Co=256
else
	set guifont=Hack:h11
endif
set encoding=utf8
" Colorscheme
set background=dark
" let jay_transparent=1
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
" Number Column
set number
set relativenumber
" Statusline
source ~/.jline.vim
" Scroll Off
set scrolloff=1
set sidescrolloff=5
" Splits
set splitbelow
set splitright
" UI
set cursorline
set colorcolumn=80
set lazyredraw
set updatetime=100
set showmatch
set list listchars=tab:\|\ ,
set showtabline=2
" Folds
set foldmethod=indent

" Plugin Preferences:
" vim-airline Preferences
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing' ]

" lightline.vim Preferences
let g:lightline = {'colorscheme': 'jay'}

" vim-gitgutter Preferences
let g:gitgutter_override_sign_column_highlight=0

" delimitMate Preferences
let delimitMate_expand_cr=1

" vim-markdown-preview Preferences
let vim_markdown_preview_toggle=1
let vim_markdown_preview_browser='Waterfox'
let vim_markdown_preview_temp_file=1
let vim_markdown_preview_github=1

" promptline.vim Preferences
" let g:promptline_preset = {
" 			\'a': [ '%@' ],
" 			\'b': [ promptline#slices#vcs_branch(), promptline#slices#git_status() ],
" 			\'c': [ promptline#slices#cwd() ],
" 			\'warn': [ promptline#slices#last_exit_code(), promptline#slices#battery({'threshold': 20}) ]}

" Key Mappings:
" Spell Checking
nnoremap <leader>sc :setlocal spell!<cr>
" Paste Mode
nnoremap <leader>pm :set paste!<cr>
" Unhighlight
nnoremap <leader>uh :nohlsearch<cr>
" ALE
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
" Tagbar
nnoremap <leader>tb :TagbarToggle<cr>
" Colorscheme Tools
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
