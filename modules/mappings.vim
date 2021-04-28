" General mappings for editing
" Plugin specific mappings are in their own *.vim
" Last Modified: 2021 Apr 28 12:54
let maplocalleader=' '          " localleader to <Space>
nnoremap ; :

" Window operation/movement
noremap <silent> <LocalLeader>q :close<CR>

" Buffer operation
nnoremap <F2> d$a<C-R>=strftime("%c")<CR><Esc>
inoremap <F2> <C-R>=strftime("%c")<CR>