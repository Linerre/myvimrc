" Basic options, mappings, autocmds, etc
" Author: Errelin
" Last Modified: 2021 Apr 24 23:10

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


" Auto-cmds:
augroup general
    au!
    au BufWritePre vimrc,~/.vim/modules/*.vim ks|call LastMod()|'s 
augroup END

" User-defined functions
fun! LastMod()
    exe "3s/Last Modified: .*/Last Modified: " . strftime("%Y %b %d %H:%M")
endfun
