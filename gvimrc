" MY VIMRC -- A suckless yet working vimrc
" Author: Errelin
" Last Modified: 2021-4-11


" Necessary plugins
call plug#begin('~/vimfiles/plugged')
Plug 'natebosch/vim-lsc'
Plug 'ajh17/VimCompletesMe'
call plug#end()

" Basic options
set number
set guifont=courier_new:h16:b
set nocompatible
set nobackup
set noundofile
set writebackup
set showmatch
set number
set ignorecase smartcase
set noexpandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set numberwidth=4
set cindent shiftwidth=4
set autoindent
set wildmode=longest,list
set nohlsearch
filetype plugin indent on
syntax enable

" System info
if !exists("g:os")
    if has("win64") || has("win32") || has("win16")
        let g:os = "Windows"
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif

" Auto-completion
set completeopt=menu,menuone,noinsert,noselect

" Mappings
noremap ; :
