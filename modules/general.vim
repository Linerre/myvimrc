" General options for all typefiles/languages.
" Think of this as unversial rules for my Vim
" Language specific options are set in filetype/*.vim
" Author: Errelin
" Last Modified: 4/22/2021 7:24:55 PM

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
set backspace=indent,eol,start  " BS works as those in modern editors
set wildmode=longest,list
set viminfo='20,/20,:20,<30,f1,h,s10,rA:,rB:,n~/.tmp/viminfo
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


" General mappings for editing
" Plugin specific mappings are in their own *.vim, for easy management
let maplocalleader=' '          " localleader to <Space>
nnoremap ; :

" Window operation/movement
noremap <silent> <LocalLeader>q :close<CR>

" Buffer operation
nnoremap <F2> d$a<C-R>=strftime("%c")<CR><Esc>
inoremap <F2> <C-R>=strftime("%c")<CR>


