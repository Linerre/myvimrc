" No need to use after/ftplugin/*.vim
" Becasue lsc already does that
" Usually LSP client/server doesn't offer completion out of the box
" LSC happens to however. An wrapper may be needed to improve the UX though,
" like vim-mucomplete
" Last Modified: 2021 Apr 28 20:34
"

let g:lsc_server_commands = {
  \ 'python': {
  \   'name': 'py-LSP',
  \   'command': 'pyls',
  \   },
  \ 'vim': {
  \ 'name': 'VimL',
  \ 'command': 'vim-language-server --stdio',
  \ },
  \}
let g:lsc_auto_map = {
 \  'GoToDefinition': 'gd',
 \  'FindReferences': 'gr',
 \  'Rename': 'gR',
 \  'ShowHover': 'K',
 \  'FindCodeActions': 'ga',
 \  'Completion': 'omnifunc',
 \}

let g:lsc_enable_autocomplete  = v:false
let g:lsc_reference_highlights = v:true
set completeopt=menu,menuone,preview,noinsert,noselect
