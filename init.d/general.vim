" General options for all typefiles/languages.
" Think of this as unversial rules for my Vim
" Language specific options are set in filetype/*.vim
" Author: Errelin
" Last Modified: 2021-04-18

set encoding=utf-8              " UTF-8 
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
set autoindent
set backspace=indent,eol,start  " BS works as those of modern editors
set wildmode=longest,list
set viminfo='20,/20,:20,<30,f1,h,s10,rA:,rB:,n~/vimfiles/viminfo
set shortmess=filnrwxtToOS 
set iskeyword=@,48-57,192-225,- " two_words; one-word 
set complete-=i
set conceallevel=0              " to show the bars and stars
hi link HelpBar Normal
hi link HelpStar Normal
set secure                      " turn on secure: no au allowed in vimrc
set background=light
colorscheme gruvbox
filetype plugin indent on
syntax enable


" General mappings; plugin specific mappings in their own *.vim
let maplocalleader=' '
nnoremap ; :

" Window operation/movement
noremap <silent> <LocalLeader>q :close<CR>

" Buffer operation
