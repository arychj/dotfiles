set cursorline
set expandtab
set noswapfile
set number
set ruler
set scrolloff=1
set shiftwidth=4
set smartindent
set tabstop=4
set termencoding=utf-8
set wildmenu

filetype on
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
