""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc
" by Deepak Jayakumar
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"mapleader
let mapleader = ","
let g:mapleader = ","

noremap ,, ,

set visualbell
set cursorline
set hidden
set timeout
set timeoutlen=2000
set ttyfast

"font and formatting
set ruler
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

"UI
Plug 'vim-scripts/wombat256.vim'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

"colorscheme
colorscheme wombat256mod

"airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

"NERDTree

let NERDTreeQuitOnOpen = 1

function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

function! ToggleFindNerd()
  if IsNERDTreeOpen()
    exec ':NERDTreeToggle'
  else
    exec ':NERDTreeFind'
  endif
endfunction

nmap <silent> <leader>f <ESC>:call ToggleFindNerd()<CR>
nmap <silent> <leader>F <ESC>:NERDTreeToggle<CR>

"CtrlP

nnoremap <silent> <Leader><space> :CtrlP<CR>
let g:ctrlp_max_files=0
let g:ctrlp_show_hidden=1

set wildignore+=*.so,*.swp,*.o
