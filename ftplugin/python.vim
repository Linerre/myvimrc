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
