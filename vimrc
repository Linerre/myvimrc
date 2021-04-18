" MY VIMRC -- A suckless, modularized yet working vimrc
" Author: Errelin
" Last Modified: 2021-4-11


" Necessary plugins
call plug#begin('~/vimfiles/plugged')
Plug 'natebosch/vim-lsc'
Plug 'ajh17/VimCompletesMe'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()


" LSP and auto-completion
let g:lsc_server_commands = {
    \ 'vim': {
    \	'name': 'VimL',
    \	'command': 'vim-languge-server.cmd',
    \	'log_level': 'Error',
    \	'enabled': 'v:false',
    \ },
    \ 'python': {
    \	'name': 'python',
    \	'command': 'pyls',
    \	'log_level': 'Warnng',
    \	'enabled': 'v:false',
    \}
\}
let g:lsc_enable_autocomplete = v:false
let g:lsc_auto_map = v:true
set completeopt=menu,menuone,preview,noinsert,noselect


" Mappings
noremap ; :
