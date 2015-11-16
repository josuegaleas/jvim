"""Pathogen"""
execute pathogen#infect()
syntax on
filetype plugin indent on
"Suggested by Nazim"
call pathogen#helptags()

"""Airline"""
set laststatus=2
let g:airline_powerline_fonts = 1
"Extension Integration"
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1

"""Syntastic"""
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
