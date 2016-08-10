""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc
" by Deepak Jayakumar
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"font and formatting
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

"line numbers
set number
set numberwidth=2
set relativenumber


"vim-plug plugin installation
call plug#begin()

Plug 'vim-scripts/wombat256.vim'
Plug 'bling/vim-airline'

call plug#end()


"colorscheme
colorscheme wombat256mod

"airline
set laststatus=2
