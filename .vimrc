"colors
syntax enable
set background=dark
colorscheme solarized
"set cul "highlight current line
hi CursorLine term=none cterm=none ctermbg=4
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"tabbing
set tabstop=4
set shiftwidth=4
set autoindent
set smarttab " Use 'shiftwidth' setting at start of lines
set expandtab " Inserts four spaces with the tab key
set softtabstop=4 " Treats four spaces as one tab
filetype plugin indent on " sensible auto indent

"search
"/The finds 'The'
"/the finds 'The' or 'the'
set ignorecase
set smartcase

"file
filetype on
"jump back to the last cursor position
if has("autocmd")
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line ("'\"") <= line("$") |
	\	exe "normal! g'\"" |
	\ endif
endif

"keys
nore ; :
nore , ;

"misc
set showmatch
set nocompatible "vim, not vi
set showcmd
set noerrorbells visualbell t_vb=

"set number "show line numbers
set shell=bash
set noerrorbells "no noise
set laststatus=2


