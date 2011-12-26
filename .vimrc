filetype on
filetype off "required for vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'git://github.com/petdance/vim-perl.git'
Bundle 'git://github.com/altercation/vim-colors-solarized.git'
Bundle 'git://github.com/vim-scripts/perl-support.vim.git'
Bundle 'git://github.com/mileszs/ack.vim.git'
Bundle 'git://github.com/tpope/vim-fugitive.git'

filetype plugin indent on

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

"search
"/The finds 'The'
"/the finds 'The' or 'the'
set ignorecase
set smartcase

"file
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
autocmd BufWritePre * :%s/\s\+$//e

"set number "show line numbers
set shell=bash
set noerrorbells "no noise
set laststatus=2


