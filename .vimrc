filetype plugin indent on
syntax enable

" define bash for :sh to use aliases
" this breaks perltidy on my local machine!
" i have aliases defined on my work's dev box
" but no longer use :sh...I just open a new tab
" for info on interactive shell see:
" http://stackoverflow.com/questions/8841116/vim-not-recognizing-aliases-when-in-interactive-mode
" set shell=/bin/bash\ -li

" format
set nowrap
set tabstop=4
set shiftwidth=4
set autoindent
set smarttab " Use 'shiftwidth' setting at start of lines
set expandtab " Inserts four spaces with the tab key
set softtabstop=4 " Treats four spaces as one tab

" search
set ignorecase
set smartcase
set nohlsearch " don't highlight results

" file
" jump back to the last cursor position
if has("autocmd")
       autocmd BufReadPost *
       \ if line("'\"") > 0 && line ("'\"") <= line("$") |
       \       exe "normal! g'\"" |
       \ endif
endif

" Resize windows with MOUSE:
" http://usevim.com/2012/05/16/mouse/
" To copy text: hold alt key before selecting text
set ttyfast " send more characters for redraw
set mouse=a " enable mouse for all modes
set ttymouse=xterm2 " works with iTerm

" allow pasting
set pastetoggle=<F2>

" misc
set showmatch
set nocompatible " vim, not vi
set showcmd
set noerrorbells visualbell t_vb=
set ruler
autocmd BufWritePre * :%s/\s\+$//e
set bs=2 " 7.3 breaks my backspace :(

"show line numbers and set to a dark color
set number
set numberwidth=3
highlight LineNr term=bold cterm=bold ctermfg=6 ctermbg=7
nnoremap <F5> :set nonumber!<CR>
set noerrorbells " no noise
set laststatus=2
set encoding=utf-8

" remove arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
noremap ; :
noremap , ;

" use perl tidy with :Tidy
" either format entire file or selected area with visual
command -range=% -nargs=* Tidy <line1>,<line2>!perltidy -q

" Press F6 for perltidy
noremap <F6> :Tidy<CR>
