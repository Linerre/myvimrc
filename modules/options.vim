" Basic options that have different values than the defaults
" Author: Errelin
" Last Modified: 2021 Nov 13 13:10

set number                      " absolute line number
set ruler                      " absolute line number
set writebackup                 " backup files when editing a file
set showmatch                   " match paired brackets
set ignorecase smartcase
set autoindent
set expandtab
set secure                      " no au allowed in vimrc

set encoding=utf-8              " UTF-8 
set tabstop=8
set softtabstop=2
set shiftwidth=2
set numberwidth=4
set autoindent
set laststatus=2

set wildignore=*.o,*.obj,*.dcox,*.xlsx
set backspace=indent,eol,start  " BS works as those in modern editors
set wildmode=longest,list
set viminfo='20,/20,:20,<30,f1,h,s10,rA:,rB:,n~/.vim/.tmp/viminfo
set shortmess=filnrwxtToOS 
set iskeyword=@,48-57,192-225,- " two_words; one-word 
set complete-=i
set conceallevel=0              " to show the bars and stars
set background=light

filetype plugin indent on
syntax enable

highlight VertSplit cterm=NONE
highlight Folded cterm=NONE ctermfg=yellow ctermbg=black
highlight CursorLine cterm=NONE ctermfg=black ctermbg=cyan
highlight StatusLine cterm=NONE ctermbg=gray ctermfg=black
