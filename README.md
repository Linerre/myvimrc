# $MYVIMRC
A suckless, modularized, vim-manual-based vimrc that works on Windows.
- VIM Version: vim-nightly (via scoop)
- Terminal: ConEmu
- Shell: PowerShell

## Modules
The following files will be sourced when `vimrc` gets sourced:
1. Module 1
2. ....

## Modules structure explained
According to Vim manual:
The following dirs (grouped here) will be sourced when vim starts:
Group 1: vimfiles -- my preference

    ~/vimfiles == C:\Users\username/vimfiles,
                  "┕C:\Users\username\vimfiles\plugged\vim-lsc,
                  "┕C:\Users\username\vimfiles\plugged\VimCompletesMe,
                  "┕C:\Users\username\vimfiles\plugged\gruvbox,
               
Group 2: $VIMRUMTIM == where vim has been installed

    C:\Users\username\scoop\apps\vim-nightly\current\vimfiles\

Group 2': after dirs == where `after` dirs are

    C:\Users\username\scoop\apps\vim-nightly\current/vimfiles/after,
    C:\Users\username\vimfiles\plugged\vim-lsc\after,
    C:\Users\username/vimfiles/after

Group 3: whatever files on my machine

runtimepath (or 'rtp' for short) can be set in this way:

    set runtimepath=group1,group2,group3,...

A real example could be:

    set runtimepath=~/vimfiles,$VIMRUNTIME,~/mytest

or if another order is prefered:

    set runtimpath=$VIMRUNTIME,~/vimfiles,~/mytest

Vim manual explains[^2]:
>You probably should always include $VIMRUNTIME somewhere, to use thedistributed runtime files.  You can put a directory before $VIMRUNTIME to find files which replace a distributed runtime files.  You can put a directory after $VIMRUNTIME to find files which add to distributed runtime files.


[Initialization](https://vimhelp.org/starting.txt.html#initialization);
[^2]: [runtimepath](https://vimhelp.org/options.txt.html#%27runtimepath%27);
[runtime](https://vimhelp.org/repeat.txt.html#%3Aruntime)
[$VIMRUNTIME](https://vimhelp.org/starting.txt.html#%24VIMRUNTIME)
