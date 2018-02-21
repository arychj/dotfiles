set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set cursorline

syntax on

function! NumberToggle()
	if &relativenumber == 1
		set relativenumber!
	else
		set relativenumber
	endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

" Force save
cnoremap W w !sudo tee > /dev/null %
