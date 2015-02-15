filetype plugin indent on

" format
syntax enable
set nowrap
set autoindent
set smarttab " Use 'shiftwidth' setting at start of lines

" set 4 width tabs, and use spaces
set sw=4 ts=4 sts=4 et

" detect Go files, adjust tabbing
au BufRead,BufNewFile *.go set filetype=go
autocmd FileType go :setlocal sw=8 ts=8 sts=8 noexpandtab

" search
set ignorecase
set smartcase
set nohlsearch " don't highlight results

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
set pastetoggle=<F4>

" switch buffers
nnoremap <silent> <F7> :bp<CR>
nnoremap <silent> <F9> :bn<CR>

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

set timeout timeoutlen=100 ttimeoutlen=100

" misc
set nocompatible " be iMproved
set showmatch
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

" Ack
let g:ackprg="~/local/bin/ack -H --nocolor --nogroup --column"

" Gist
let g:github_api_url = 'https://github.sol/api/v3'

" remove arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" use perl tidy with :Tidy
" either format entire file or selected area with visual
command -range=% -nargs=* Tidy <line1>,<line2>!perltidy -q

" Press F6 for perltidy
noremap <F6> :Tidy<CR>

set term=xterm-256color

" don't let vim warn me when i want to switch from an unsaved buffer
" set hidden

" keep cursor 5 lines away from edges of screen
set scrolloff=5
