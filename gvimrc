" Since gvimrc always gets sourced after vimrc (see h: gvimrc),
" options only related to GUI will appear here.
" Author: Errelin
" Last Modified: 2021 May 02 19:24



" Basic options
if has('win32') || has('win64')
    set guifont=courier_new:h16:b:cDEFAULT
elseif has('gui_gtk3') || has('linux')
    set guifont=Consolas\ 16
elseif has('osx')
    set guifont=Monaco:h16
endif

set guioptions+=!a
if has('multi_byte_ime')
    highlight Cursor guifg=#689d6a guibg=background
    highlight CursorIM guifg=Red guibg=background
endif  
