" Xinuc's .vimrc
" by Nugroho Herucahyono <xinuc@xinuc.org>

set encoding=utf-8

" use pathogen
call pathogen#infect()

" Duh. I'm using VIM
set nocompatible

let mapleader = ","
let maplocalleader = "m"

" backspace
set backspace=indent,eol,start

" wrapping
set wrap
set linebreak

" trailling
set list
set listchars=tab:>-,trail:.

" search
set incsearch
set hlsearch
set ignorecase

" cmd history
set history=1000

" indent
set softtabstop=2
set tabstop=2
"set smarttab
set shiftwidth=2
"set autoindent
"set smartindent
"set expandtab
set cindent
set cpoptions-=J

" window
set winminheight=0

" other display
set ch=2
set mousehide
set et!

"set number
set scrolloff=2
set ruler

"guioptions
set go=aiA

set showmatch
set matchtime=1
set backspace=indent,eol,start
set cursorline
set hidden
set ofu=syntaxcomplete#Complete

" bottom
set showcmd
set showmode

map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>
map <S-Tab> :NERDTreeToggle<CR>
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
map <leader>y "+y
map <leader>p "+gp
map <C-Backspace> db
map ;; :! 

map <leader>l :set list!<CR>

nnoremap <leader><leader> <c-^>

cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>o :edit %%
map <leader>v :view %%

syntax on
filetype plugin indent on

set listchars=tab:▸\ ,eol:¬

"wildignore
set wildmode=list:longest
set wildignore+=*.pdf,*.ppt,*.zip,*.doc,*.xls
set wildignore+=tmp/**/*,public/system/**/*,public/uploads/**/*,log/**/*

" quick escape
map! ;l <ESC>
map ;l <ESC>

set guifont=Monaco\ for\ Powerline

" setting color
" color tomorrow-night
color badwolf
let g:Powerline_symbols = 'fancy'
set laststatus=2

" ctrlP
let g:ctrlp_working_path_mode = 0
map <leader>t :CtrlP<CR>
map <leader>r :CtrlPBuffer<CR>

" ctrlp.vim Rails
map <localleader>tm :CtrlP app/models<CR>
map <localleader>tc :CtrlP app/controllers<CR>
map <localleader>tv :CtrlP app/views<CR>
map <localleader>ta :CtrlP app/assets<CR>
map <localleader>ts :CtrlP spec<CR>

" quick no hl
map <C-CR> :nohlsearch<CR>

" haskell mode
let g:haddock_browser="/usr/bin/firefox"

" vimclojure
let vimclojure#HighlightBuiltins =1
let vimclojure#ParenRainbow =1
let vimclojure#HighlightContrib=1
let vimclojure#DynamicHighlighting=1
