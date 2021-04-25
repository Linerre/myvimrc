" No need to use after/ftplugin/*.vim
" as lsc already does that
" Last Modified: Sun 25 Apr 2021 12:16:38 PM HKT
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
