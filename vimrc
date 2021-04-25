" MY VIMRC -- A suckless, modularized yet working vimrc
" Author: Errelin
" Last Modified: 2021-4-11


" Necessary plugins
if has('win32') || has ('win64')
    call plug#begin('~/vimfiles/plugged')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'lifepillar/vim-mucomplete'
    Plug 'morhetz/gruvbox'
    "Plug 'ajh17/VimCompletesMe'
    call plug#end()
    runtime modules\cocnvim.vim
else
    call plug#begin('~/.vim/plugged')
    Plug 'natebosch/vim-lsc'
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'lifepillar/vim-mucomplete'
    Plug 'morhetz/gruvbox'
    Plug 'ryanoasis/vim-devicons'
    call plug#end()
    runtime modules/vimlsc.vim
endif


runtime modules/general.vim
runtime modules/nerdtree.vim
