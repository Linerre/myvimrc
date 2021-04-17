" Since gvimrc always gets sourced after vimrc (see h: gvimrc),
" options only related to GUI will appear here.
" Author: Errelin
" Last Modified: 2021-4-17



" Basic options
set guifont=courier_new:h16:b
set guioptions+=!a


" System info
if !exists("g:os")
    if has("win64") || has("win32") || has("win16")
        let g:os = "Windows"
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif

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
