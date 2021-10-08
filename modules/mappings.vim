" General mappings for editing
" Plugin specific mappings are in their own *.vim
" Last Modified: 2021 Oct 09 01:32
let maplocalleader=' '          " localleader to <Space>
nnoremap ; :

" on machines where cap/ctrl are not swapped
inoremap <silent> <LocalLeader>[ <Esc>

" Window operation/movement
noremap <silent> <LocalLeader>q :close<CR>

" Buffer operation
nnoremap <F2> d$a<C-R>=strftime("%c")<CR><Esc>
inoremap <F2> <C-R>=strftime("%c")<CR>
