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
set backspace=indent,eol,start
filetype plugin indent on 
let python_highlight_all=1
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
abbr _bash #!/usr/bin/env bash
hi Statement ctermfg=red
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '.'
set cursorline
set cursorcolumn
call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'hashivim/vim-terraform'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/preservim/nerdtree'
call plug#end()

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
nnoremap <C-t> :NERDTreeToggle<CR>
let g:coc_node_path = '/usr/local/bin/nvim'
let g:coc_node_path = '/usr/local/bin/node'
