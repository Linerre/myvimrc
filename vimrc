" MY VIMRC -- A suckless yet working vimrc
" Author: Errelin
" Last Modified: 2021-4-11


" Necessary plugins
call plug#begin('~/vimfiles/plugged')
Plug 'natebosch/vim-lsc'
Plug 'ajh17/VimCompletesMe'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()

" Basic options
set number                      " absolute line number
set backupdir=~/.tmp            " backup file to .tmp
set undodir=~/.tmp              " undo file to .tmp
set dir=~/.tmp                  " swap file to .tmp 
set writebackup                 " backup files when editing a file
set showmatch                   " match paired brackets
set ignorecase smartcase
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set numberwidth=4
set cindent shiftwidth=4        " indentation for C
set autoindent
set wildmode=longest,list
set nohlsearch
filetype plugin indent on
syntax enable

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
