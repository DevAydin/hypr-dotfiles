

"    _             _ _        __     ___
"   / \  _   _  __| (_)_ __   \ \   / (_)_ __ ___  _ __ ___
"  / _ \| | | |/ _` | | '_ \   \ \ / /| | '_ ` _ \| '__/ __|
" / ___ \ |_| | (_| | | | | |   \ V / | | | | | | | | | (__
"/_/   \_\__, |\__,_|_|_| |_|    \_/  |_|_| |_| |_|_|  \___|
"        |___/
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" ┌───────┐
" │Options│
" └───────┘
filetype plugin indent on
set autoindent
syntax on
set number
set hlsearch
set ic
set incsearch
set emoji
set noswapfile
set encoding=utf-8
:command Ra !ranger
:command Nt NERDTreei

	
set background=dark



" ┌───────┐
" │Plugins│
" └───────┘

"https://github.com/junegunn/vim-plug

call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'
Plug 'christoomey/vim-system-copy'
Plug 'https://github.com/ap/vim-css-color.git'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'terroo/vim-simple-emoji'
Plug 'chriskempson/base16-vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'wolandark/Pool-Vim'
call plug#end()

" ┌──────┐
" │Cursor│
" └──────┘
set guicursor+=a:blinkon0
set guifont=Fira\ Code\ 12
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


" ┌────────────────────────┐
" │for lightline status bar│
" └────────────────────────┘
set background=dark
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \ 'right': [ [ 'lineinfo' ], [ 'percent', 'wordcount' ], [ 'filetype' ] ],
      \ 'left': [ [ 'mode' ], [ 'readonly', 'absolutepath', 'modified' ] ],
      \ },
      \ 'component_function': {
      \ 'wordcount': 'WordCount',
      \ },
      \ 'component': {
      \ 'charvaluehex': '0x%B',
      \ 'lineinfo': '%l\%L',
      \ }
      \ }

let g:lightline.separator={ 'left': "\ue0b0", 'right': "\ue0b2" }
let g:lightline.subseparator={ 'left': "\ue0b1", 'right': "\ue0b3" }

