set nocompatible

syntax on

set number
set relativenumber

set cursorline
set guicursor= " Default cursor
set mouse=c

set shiftwidth=4
set tabstop=4
set scrolloff=8
set expandtab

set showcmd

set nobackup
set noswapfile

set incsearch " While searching though a file incrementally highlight matching characters as you type.
set nohlsearch " Do not use highlighting when doing a search
set nowrap " Do not wrap lines.

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set updatetime=150

" Set window size for :Lex
let g:netrw_winsize = 25

if has("nvim")
    set noshowmode " Prefers Neovim's Lualine mode display

    set foldmethod=expr
    set foldexpr=nvim_treesitter#foldexpr()
    set nofoldenable
else
	set wildmenu

    filetype on " Enable type file detection. Vim will be able to try to detect the type of file in use.
    filetype indent on " Load an indent file for the detected file type.
endif

" Remaps
let mapleader = ' '

" Open file explorer
nnoremap <leader>d :Ex<cr>

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" Yank from cursor to the end of line.
nnoremap Y y$

" Resize panels
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" Paste without losing register
xnoremap <leader>p "_dP

" Yank to system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y

" Quickfix list
nnoremap <leader>q :copen<cr>
nnoremap <leader>Q :cclose<cr>
nnoremap <C-j> :cnext<cr>
nnoremap <C-k> :cprev<cr>

" Location list
nnoremap <leader>l :lopen<cr>
nnoremap <leader>L :lclose<cr>

" Centers view
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

nnoremap n nzzzv
nnoremap n nzzzv

" Reload vim configs
nnoremap <leader>s :source $MYVIMRC<cr>
