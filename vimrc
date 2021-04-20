" MY VIMRC -- A suckless, modularized yet working vimrc
" Author: Errelin
" Last Modified: 2021-4-11


" Necessary plugins
call plug#begin('~/vimfiles/plugged')
"Plug 'natebosch/vim-lsc'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'lifepillar/vim-mucomplete'
Plug 'morhetz/gruvbox'         " no need for these themes
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'ajh17/VimCompletesMe'
call plug#end()

let g:node_client_debug = 1

runtime init.d\general.vim
runtime init.d\nerdtree.vim
"runtime init.d\vimlsc.vim





