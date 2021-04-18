# $MYVIMRC
A suckless, modularized, vim-manual-based vimrc that works on Windows.
- VIM Version: vim-nightly (via scoop)
- Terminal: ConEmu
- Shell: PowerShell

## Modules
The following modules will be sourced when `vimrc` gets sourced:
1. general.vim -- general options set for the editor itself and for all languages  
2. *<plugin_name>*.vim -- each plugin's config
3. after/\*.vim -- modifications to the system distribution (I'm happy with the default, just some minor tweaking).

## Modules structure explained
To better understand what files will be sourced in what order, the following sections/parts serve as a good starting point:
1. [Initialization](https://vimhelp.org/starting.txt.html#initialization)
2. [runtime](https://vimhelp.org/repeat.txt.html#%3Aruntime)
3. [$VIMRUNTIME](https://vimhelp.org/starting.txt.html#%24VIMRUNTIME)

According to Vim manual:

The following dirs (grouped here) will be sourced when vim starts:
Group 1: vimfiles -- my preference

    ~/vimfiles == C:\Users\username/vimfiles,
                  ┕C:\Users\username\vimfiles\plugged\vim-lsc,
                  ┕C:\Users\username\vimfiles\plugged\VimCompletesMe,
                  ┕C:\Users\username\vimfiles\plugged\gruvbox,
               
Group 2: `$VIMRUMTIM` == where vim has been installed

    C:\Users\username\scoop\apps\vim-nightly\current\vimfiles\

Group 2': after dirs == where `after` dirs are (part of group2)

    C:\Users\username\scoop\apps\vim-nightly\current/vimfiles/after,
    C:\Users\username\vimfiles\plugged\vim-lsc\after,
    C:\Users\username/vimfiles/after

Group 3: whatever files on my machine

`runtimepath` (or `rtp` for short) can be set in this way:

    set runtimepath=group1,group2,group3,...

A real example could be:

    set runtimepath=~/vimfiles,$VIMRUNTIME,~/mytest

or if another order is prefered:

    set runtimpath=$VIMRUNTIME,~/vimfiles,~/mytest

Vim manual explains<sup>[1](#myft1)</sup>:
>You probably should always include $VIMRUNTIME somewhere, to use thedistributed runtime files.  You can put a directory before $VIMRUNTIME to find files which replace a distributed runtime files.  You can put a directory after $VIMRUNTIME to find files which add to distributed runtime files.

<a name="myft1">[1]</a>: [runtimepath](https://vimhelp.org/options.txt.html#%27runtimepath%27);
