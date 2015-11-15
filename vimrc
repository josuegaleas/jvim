""" Pathogen """
execute pathogen#infect()
syntax on
filetype plugin indent on
call pathogen#runtime_append_all_bundles() " Suggested by Nazim "
call pathogen#helptags() " Suggested by Nazim "

""" Airline"""
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
