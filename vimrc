" Set compatibility to Vim only
set nocompatible

" Wrap text that extends beyond screen length
set wrap

" Encoding
set encoding=utf-8

" Show line numbers relative to cursor position 
set relativenumber

" Switch to another buffer even if there are unsaved changes in current buffer
set hidden

" Status bar
set laststatus=2

" Transverse everything else in the pwd
set path+=$PWD/**

" netrw Vim's file explorer for searching files in the file system
"set nocp
filetype plugin on

" Call the vim-plug file
if filereadable(expand("~/.vim/vimrc.plug"))
	source ~/.vim/vimrc.plug
endif

" Vim color-scheme
colorscheme wildcharm

" Turn syntax highlighting on
syntax on

" Code folding
set foldmethod=indent

" Enables smartcase search sensitivity
set ignorecase
set smartcase

"Enables you to open a file without all the code folded up 
set foldlevel=99

" Highlight cursor line
set cursorline
:highlight Cursorline ctermbg=black

" Highlight Search patterns
set hlsearch

" Use crtl-[hjkl] to move between splits
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Python config
"au BufNewFile, BufRead *.py

" Indentation using spaces
" tabstop: Width of tab spacing character
" softtabstop: finetunes the amount of whitespaces to be added
" shiftwidth: Determines the amount of whitespace to add in normal mode
" autoindent: Autoindent in new line
" expandtab: Turns tabs into spaces...prevents spacing errors
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set expandtab

"  Prevents errors when merging a windows repo and linux repo due to different line characters
set fileformat=unix

" Show matching pairs [] {} () 
set showmatch
