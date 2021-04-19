" MY VIMRC -- A suckless, modularized yet working vimrc
" Author: Errelin
" Last Modified: 2021-4-11


" Necessary plugins
call plug#begin('~/vimfiles/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'lifepillar/vim-mucomplete'
Plug 'natebosch/vim-lsc'
"Plug 'ajh17/VimCompletesMe'
"Plug 'morhetz/gruvbox'         " no need for these themes
call plug#end()

runtime init.d\general.vim
runtime init.d\nerdtree.vim
runtime init.d\vimlsc.vim





