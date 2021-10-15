" MY VIMRC -- A suckless, modularized yet working vimrc
" Author: Errelin
" Last Modified: 2021 Oct 15 10:45


" Necessary plugins
if has('win32') || has ('win64')
    call plug#begin('~/vimfiles/plugged')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'lifepillar/vim-mucomplete'
    Plug 'morhetz/gruvbox'
    "Plug 'ajh17/VimCompletesMe'
    call plug#end()
    set backupdir=~/vimfiles/tmp    " backup file to .tmp
    set undodir=~/vimfiles/tmp      " undo file to .tmp
    set dir=~/vimfiles/tmp          " swap file to .tmp 
    runtime modules/cocnvim.vim
    "runtime modules/theme.vim
else
    call plug#begin('~/.vim/plugged')
    Plug 'natebosch/vim-lsc'
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'lifepillar/vim-mucomplete'
    Plug 'morhetz/gruvbox'
    Plug 'ryanoasis/vim-devicons'
    "Plug 'Glench/Vim-Jinja2-Syntax'
    call plug#end()
    set backupdir=~/.vim/.tmp       " backup file to .tmp
    set undodir=~/.vim/.tmp         " undo file to .tmp
    set dir=~/.vim/.tmp             " swap file to .tmp 
    if finddir('~/.local/lib64/node_modules/vim-language-server')
        runtime modules/vimlsc.vim
    endif
endif

runtime modules/options.vim
runtime modules/mappings.vim
runtime modules/autocmds.vim
runtime modules/nerdtree.vim
