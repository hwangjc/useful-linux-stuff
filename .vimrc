"""""""""""""""""""""""""""""""""GLOBAL CONFIGS""""""""""""""""""""""""""""""""

set number				" line numbers
syntax on
colorscheme desert

set tabstop=4			" set default to using tabs with appearance of 4 spaces
set shiftwidth=4
set softtabstop=0
set noexpandtab

set autoindent
set ruler				" shows current line number

"""""""""""""""""""""""""""INDENTATION PER FILE TYPE"""""""""""""""""""""""""""

autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd FileType java setlocal tabstop=4 shiftwidth=4 softtabstop=0 expandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=0 expandtab

"""""""""""""""""""""""""""""""""FILE EXPLORER"""""""""""""""""""""""""""""""""

" File explorer on vertical split on vim launch
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4 " 4 = same window; 3 = new tab;
let g:netrw_altv = 1
let g:netrw_winsize = 19 " window size of file explorer
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

""""""""""""""""""""""""""""""""""""REFERENCE""""""""""""""""""""""""""""""""""

function! UseTabs()
	set tabstop=4
	set shiftwidth=4
	set noexpandtab
	set autoindent
	retab
endfunction " changes all indenting to tabs in the document

function! UseSpaces()
	set tabstop=4
	set shiftwidth=4
	set expandtab
	set softtabstop=0
	set autoindent
	set smarttab	
	retab
endfunction " changes all indenting to spaces in the document
