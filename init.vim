:set noerrorbells
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set ruler
syntax on
:set expandtab
:set incsearch
:set ignorecase
:set hlsearch
:set history=100
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
call plug#begin()
Plug 'neoclide/coc.nvim'
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/mattn/emmet-vim' " Emmet for HTML
Plug 'lukas-reineke/indent-blankline.nvim' "Indent Guides for YML
Plug 'hashivim/vim-terraform'
call plug#end()

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
nnoremap <C-t> :NERDTreeToggle<CR>
colorscheme archery
abbr _bash #!/usr/bin/env bash
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char = '⦙'
let g:coc_node_path = '/usr/local/bin/nvim'
let g:coc_node_path = '/usr/local/bin/node'
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
