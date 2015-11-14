" Pathogen "
execute pathogen#infect()
syntax on
filetype plugin indent on
	" Suggested by Nazim "
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Airline"
set laststatus=2
