" MY VIMRC -- A suckless, modularized yet working vimrc
" Author: Errelin
" Last Modified: 2021-4-11


" Necessary plugins
call plug#begin('~/vimfiles/plugged')
Plug 'natebosch/vim-lsc'
Plug 'ajh17/VimCompletesMe'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'morhetz/gruvbox'         " no need for these themes
"Plug 'lifepillar/vim-gruvbox8' " since vim uses the ConEmu's theme
call plug#end()

runtime init.d\general.vim
runtime init.d\nerdtree.vim
runtime init.d\vim-lsc.vim


