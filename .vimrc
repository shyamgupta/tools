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
hi Statement ctermfg=red
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
let python_highlight_all=1
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
abbr _bash #!/usr/bin/env bash
colorscheme molokai
set cursorline
set cursorcolumn
let g:indentLine_leadingSpaceEnabled = 1
call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/mattn/emmet-vim' " Emmet for HTML
Plug 'hashivim/vim-terraform'
Plug 'Yggdroot/indentLine'
call plug#end()
