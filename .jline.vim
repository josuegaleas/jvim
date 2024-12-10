" =============================================================================
" Author: josuegaleas
" Source: https://github.com/josuegaleas/jvim
" Last Edit: 2024.12.09
" =============================================================================

let s:modes = {
			\'n':'Normal',
			\'v':'Visual', 'V':'V-Line', '^V':'V-Block',
			\'s':'Select', 'S': 'S-Line', '^S':'S-Block',
			\'i':'Insert',
			\'R':'Replace',
			\'c':'Command',
			\'r':'Prompt',
			\'!':'Shell',
			\'t':'Terminal'}

" Functions:
function! CheckFileType() abort
	return &filetype ==? 'help' || &filetype ==? 'netrw' || &filetype ==? 'vim-plug'
endfunction

function! CurrentMode() abort
	return toupper(CheckFileType() ? &filetype : get(s:modes, mode(), 'Unknown'))
endfunction

function! GitStatus() abort
	if CheckFileType() || mode() ==? 't' || !exists("*FugitiveHead") || !exists("*GitGutterGetHunkSummary")
		return ''
	endif

	let l:branch = FugitiveHead()

	if branch ==? ''
		return ''
	else
		let [l:a, l:m, l:r] = GitGutterGetHunkSummary()
		return printf(' +%d ~%d -%d ¦ %s |', a, m, r, branch)
	endif
endfunction

function! FileType() abort
	return CheckFileType() ? '' : &filetype
endfunction

function! LinterStatus() abort
	if !exists("*ale#statusline#Count")
		return ''
	endif

	let l:counts = ale#statusline#Count(bufnr(''))

	let l:all_errors = l:counts.error + l:counts.style_error
	let l:all_non_errors = l:counts.total - l:all_errors

	return l:counts.total == 0 ? '' : printf('| W:%d E:%d ', all_non_errors, all_errors)
endfunction

" Statusline:
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

set laststatus=2
set noshowmode
set wildmenu
