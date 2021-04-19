" LSP and auto-completion config
" No need to use after/ftplugin/*.vim
" becasue lsc_server_commands already does that

let g:lsc_server_commands = {
  \ 'python': {
  \   'name': 'python-LSP',
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
"let g:lsc_auto_map = {'defaults': v:true, 'Completion': 'omnifunc'}
let g:lsc_enable_autocomplete  = v:false
let g:lsc_reference_highlights = v:true
let g:lsc_enable_diagnostics   = v:false
set completeopt=menu,menuone,preview,noinsert,noselect
