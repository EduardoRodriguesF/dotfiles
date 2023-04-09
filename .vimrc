"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Turn syntax highlighting on.
syntax on

" Number column
set number
set relativenumber

" Highlight cursor line underneath the cursor horizontally.
set cursorline

set guicursor= " Default cursor

set mouse=c

" Tab indent width,
set shiftwidth=4
set tabstop=4

" Show commands as typed.
set showcmd

" Do not save backup files.
set nobackup
set noswapfile

set nowrap " Do not wrap lines.

set incsearch " While searching though a file incrementally highlight matching characters as you type.
set nohlsearch " Do not use highlighting when doing a search

" Enable auto completino menu after pressing TAB.
set wildmenu
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set updatetime=150

" Keep 5 lines below and above the cursor
set scrolloff=5

if has("nvim") " Neovim configs
    set noshowmode " Prefers Neovim's Lualine mode display

    set foldmethod=expr
    set foldexpr=nvim_treesitter#foldexpr()
    set nofoldenable
else " Vim only configs
    filetype on " Enable type file detection. Vim will be able to try to detect the type of file in use.
    filetype indent on " Load an indent file for the detected file type.
endif

" Remaps

" Set the backslash as the leader key.
let mapleader = ' '

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" Yank from cursor to the end of line.
nnoremap Y y$

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" Paste without losing register
xnoremap p _dP

" Yank to system clipboard
nnoremap <leader>y \"+y
vnoremap <leader>y \"+y
nnoremap <leader>Y \"+Y

" Quickfix list
nnoremap <leader>q :copen
nnoremap <leader>Q :close

" Location list
nnoremap <leader>l :lopen
nnoremap <leader>L :lclose

" Move Visual blocks with J an K
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
