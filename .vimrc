filetype on
filetype off "required for vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
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
set nohlsearch "don't highlight results

"file
"jump back to the last cursor position
if has("autocmd")
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line ("'\"") <= line("$") |
	\	exe "normal! g'\"" |
	\ endif
endif

"misc
set showmatch
set nocompatible "vim, not vi
set showcmd
set noerrorbells visualbell t_vb=
set ttyfast
set ruler
autocmd BufWritePre * :%s/\s\+$//e
set bs=2 "7.3 breaks my backspace :(

"set number "show line numbers
set shell=bash
set noerrorbells "no noise
set laststatus=2
set encoding=utf-8

"key maps
nnoremap <SPACE> za
"remove arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
"this saves my pinky. now if i can get out of the habit of pressing shift >:(
noremap ; :
noremap , ;


"encryption
"add this to bash profile: alias vime='vim -u ~/.vimencrypt -x'
"create .vimencrypt and add this to file:
"source ~/.vimrc
"set nobackup
"set noswapfile
"set nowritebackup
"set cm=blowfish (blowfish only for vim >=7.3 / older versions default to crypt)

" use perl tidy with :Tidy
" either format entire file or selected area with visual
command -range=% -nargs=* Tidy <line1>,<line2>!
    \perltidy <args>
