"""Pathogen"""
execute pathogen#infect()
syntax on
filetype plugin indent on
"Suggested by Nazim"
call pathogen#runtime_append_all_bundles()
"Suggested by Nazim"
call pathogen#helptags()

"""Airline"""
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
