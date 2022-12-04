set noerrorbells
set nowrap
set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
syntax on
set nocompatible
filetype on
set expandtab
set incsearch
set ignorecase
set hlsearch
set history=100
set wildmenu
set ruler
set vb
set showmatch
filetype plugin on 
let python_highlight_all=1
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
abbr _bash #!/usr/bin/env bash
colorscheme molokai
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '.'
set cursorline
set cursorcolumn
call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'hashivim/vim-terraform'
Plug 'Yggdroot/indentLine'
call plug#end()
" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}

