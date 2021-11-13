" General mappings for editing
" Plugin specific mappings are in their own *.vim
" Last Modified: 2021 Nov 13 13:10
let maplocalleader = ' '          " localleader to <Space>
nnoremap ; :

" Window operation/movement
noremap <silent> <LocalLeader>q :close<CR>

" Buffer operation
nnoremap <F2> d$a<C-R>=strftime("%c")<CR><Esc>
inoremap <F2> <C-R>=strftime("%c")<CR>


nnoremap <LocalLeader>S :w<Esc>
" window splitting
nnoremap <LocalLeader>- <C-W>s
nnoremap <LocalLeader>= <C-W>v
nnoremap <LocalLeader>q :close<Esc>
" window moving
nnoremap <LocalLeader>w <C-W>k
nnoremap <LocalLeader>a <C-W>h
nnoremap <LocalLeader>s <C-W>j
nnoremap <LocalLeader>d <C-W>l
nnoremap <LocalLeader>1 <C-W>t
nnoremap <LocalLeader>2 <C-W>b
nnoremap <LocalLeader>p <C-W>p
nnoremap <LocalLeader>n <C-W>P

