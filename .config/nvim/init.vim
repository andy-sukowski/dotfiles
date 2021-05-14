" Syntax highlighting
filetype plugin on
syntax on

" Indentation
filetype indent on

" Visual wrapping
set linebreak
set breakindent

" Line numbers
set number

" Disable ShaDa
set shada=

" vim-plug
call plug#begin(stdpath('data') . '/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
call plug#end()

" Color scheme
colorscheme nord
let g:lightline = {
	\ 'colorscheme': 'nord',
	\ }
