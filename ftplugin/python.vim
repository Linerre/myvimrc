" Vim can search for files (recursively) in a bunch of paths 
" These paths are defined in the var 'path' (path=.,, by default)
" This script limits the searching to only a few files 
" that appear in the 'include/import' statement (lang-specific)
"
" Author: Errelin
" Algorithm:
" 1. find lines like import abc and extract the abc part
" 2. append .py to the abc part
" 3. quitely load them to the buffer list
" 4. update them when necessary


" Set proper path if necessary
if &path == '.,,'
    setlocal path+=C:\\Program\\\ Files\Python39\Lib
endif

" get all the lines in the current py script buffer
let g:current_script_lines = getbufline(bufname(0), 1, "$") 

" keep only the import statements lines
" map + funcref requires funcref with 2 argvs
" see: https://vimhelp.org/eval.txt.html#map%28%29
let g:module_lines = map(
    \ uniq(sort(
    \ filter(
    \ copy(current_script_lines), 'v:val =~ "^\\s*import \\S\\+"'),'i')),
    \ {_, val -> substitute(val, "\\s*import ", "", "")})

