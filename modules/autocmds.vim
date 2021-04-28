
" Auto-cmds:
augroup general
    au!
    au BufWritePre vimrc,gvimrc,~/*vim*/modules/*.vim ks|call s:LastMod()|'s 
augroup END

" User-defined functions
fun! s:LastMod()
    if line('$') > 10
        let l:note_last_line = 10
    else
        let l:note_last_line = line('$')
    endif
    exe "1," . l:note_last_line . "s/Last Modified: .*/Last Modified: " . 
    \ strftime("%Y %b %d %H:%M")
endfun
