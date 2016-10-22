""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc
" by Deepak Jayakumar
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"{{{ Basic Configuration

let mapleader = ","
let g:mapleader = ","

noremap ,, ,

set nocompatible
set foldmethod=marker
set visualbell
set cursorline
set hidden
set timeout
set timeoutlen=2000
set ttyfast
set ttyscroll=3
set lazyredraw
set shiftround
set wildmenu
set wildmode=longest:full,full
set wildignore+=*.so,*.swp,*.o
set shell=\bin\bash
set ruler
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set autoindent
set number
set numberwidth=2
set relativenumber
set laststatus=2
set splitbelow
set splitright
set shell=/bin/bash

"}}}

"{{{ Plugins

call plug#begin()

Plug 'vim-scripts/wombat256.vim'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

"}}}

"{{{ UI

"{{{ Wombat and Airline

colorscheme wombat256mod

let g:airline#extensions#tabline#enabled = 1

"}}}

"{{{ TMux + Vim Splits

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"}}}

"}}}

"{{{ Files

"{{{ NERDTree

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

"}}}

"{{{ CtrlP

nnoremap <silent> <Leader><space> :CtrlP<CR>
let g:ctrlp_max_files=0
let g:ctrlp_show_hidden=1

"}}}

"}}}

"{{{ Syntax

"{{{ Syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"}}}

"{{{ ultisnips + vim-snippets

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsEditSplit="vertical"

"}}}

"}}}
