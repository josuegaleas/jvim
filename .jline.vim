" =============================================================================
" Author: josuegaleas
" Source: https://github.com/josuegaleas/jvim
" Last Edit: 2022.07.04
" =============================================================================

" Functions:
let g:currentmode = {
			\ 'n':'Normal', 'no':'N·Operator Pending',
			\ 'v':'Visual', 'V':'V·Line', '^V':'V·Block',
			\ 's':'Select', 'S': 'S·Line', '^S':'S·Block',
			\ 'i':'Insert', 'ic':'I·compl-generic', 'ix':'I·i_CTRL-X',
			\ 'R':'Replace', 'Rc':'R·compl-generic', 'Rv':'R·Virtual', 'Rx':'R·i_CTRL-X',
			\ 'c':'Command', 'cv':'Vim Ex', 'ce':'Normal Ex',
			\ 'r':'Prompt', 'rm':'More', 'r?':'Confirm',
			\ '!':'Shell', 't':'Terminal'}

function! CurrentMode() abort
	if &filetype ==# 'help' || &filetype ==# 'netrw' || &filetype ==# 'vim-plug'
		return toupper(&filetype)
	else
		return toupper(get(g:currentmode, mode(), 'UNKNOWN'))
	endif
endfunction

function! GitStatus() abort
	let branch = FugitiveHead()

	if branch == ''
		return ''
	else
		let [a, m, r] = GitGutterGetHunkSummary()
		return printf(' +%d ~%d -%d ¦ %s |', a, m, r, branch)
	endif
endfunction

function! FileType() abort
	if &filetype ==# 'help' || &filetype ==# 'netrw' || &filetype ==# 'vim-plug'
		return ''
	else
		return &filetype
	endif
endfunction

function! LinterStatus() abort
	let l:counts = ale#statusline#Count(bufnr(''))

	let l:all_errors = l:counts.error + l:counts.style_error
	let l:all_non_errors = l:counts.total - l:all_errors

	return l:counts.total == 0 ? '' : printf('| W:%d E:%d ', all_non_errors, all_errors)
endfunction

" Statusline:
set laststatus=2
set statusline=
set statusline+=\ %{CurrentMode()}
set statusline+=%{&paste?'\ \ \¦\ PASTE':''}
set statusline+=%{&spell?'\ \ \¦\ SPELL':''}
set statusline+=\ \|%{GitStatus()}
set statusline+=\ %f
set statusline+=%{&modified?'[+]':''}
set statusline+=\ %r
set statusline+=%=
set statusline+=%{FileType()}
set statusline+=\ \|\ %l/%L
set statusline+=\ %{LinterStatus()}

set wildmenu
set noshowmode
