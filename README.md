# $MYVIMRC
A sane, modularized, vim-manual-based *vimrc* that works on btoh Windows and \*nix distros.

It is an independent vim-config repo and also a submodule of my [dotfiles](ihttps://github.com/Linerre/voidrice).

## Basics
- VIM version: vim-nightly (via pkg managers)
- Terminal: 
    - st
    - Alacritty
    - kitty
- Shell: 
    - PowerShell
    - Zsh
    - Bash

*These days I'm using gruvbox light theme everywhere*.

## Reason
1. Vim's config is not XDG-compatible yet so I separate it from my other dotfiles. 
2. I'm using several machines with different OSes installed on them. Manly Linux, but Windows/macOS there too. 
3. Windows is so different from \*nix ones that it's worth the effort to tweak Vim a little bit solely for it.  
4. Since Neovim is going to be more different than Vim (see [differences](https://neovim.io/doc/user/vim_diff.html)), it's better to have a Vim-only config repo.

One more trivial reason is that I'm reading Vim's excellent [documenation](https://vimhelp.org). I have found a few redundant options set throughout my old config. As I learn more, I'll only develop a saner version based on the old one.

## Modules
The following modules (under `modules` dir) will be sourced when the `vimrc` gets sourced:
1. general.vim -- general options set for the editor itself and for all languages  
2. <*module_name*>.vim where *module_name* :
    1. is a plugin's name;
    2. indicates its functionality, e.g. 'theme', 'mappings', etc.
3. after/\*.vim -- modifications to the system distribution (I'm happy with the default most of the time, just some minor tweaking).

## Module order explained
To better understand what files will be sourced in what order, the following sections/parts in Vim doc serve as a good starting point:
1. [Initialization](https://vimhelp.org/starting.txt.html#initialization)
2. [runtime](https://vimhelp.org/repeat.txt.html#%3Aruntime)
3. [$VIMRUNTIME](https://vimhelp.org/starting.txt.html#%24VIMRUNTIME)

According to Vim manual:

The following dirs (grouped here) will be sourced when vim starts:
Group 1: vimfiles -- my preference

    ~/vimfiles == C:/Users/<username>/vimfiles,
                  ┕C:/Users/<username>/vimfiles/plugged/vim-lsc,
                  ┕C:/Users/<username>/vimfiles/plugged/VimCompletesMe,
                  ┕C:/Users/<username>/vimfiles/plugged/gruvbox,
               
Group 2: `$VIMRUMTIM` == where vim has been installed

    C:/Users/<*username*>/scoop/apps/vim-nightly/current/vimfiles/

Group 2': after dirs == where `after` dirs are (part of group2)

    C:/Users/<username>/scoop/apps/vim-nightly/current/vimfiles/after,
    C:/Users/<username>/vimfiles/plugged/vim-lsc/after,
    C:/Users/<username>/vimfiles/after

Group 3: whatever files on my machine

`runtimepath` (or `rtp` for short) can be set in this way:

    set runtimepath=group1,group2,group3,...

Usually I don't need to configure my `runtimpath`, as either `~/vimfiles` (Windows) or `~/.vim` is already included in `$VIMRUNTIME`. If I'd like to add another directory to it, a real example could be:

    set runtimepath=~/vimfiles,$VIMRUNTIME,~/mytest

or if another order is prefered:

    set runtimpath=$VIMRUNTIME,~/vimfiles,~/mytest

Vim manual explains<sup>[1](#myft1)</sup>:
>You probably should always include $VIMRUNTIME somewhere, to use thedistributed runtime files.  You can put a directory before $VIMRUNTIME to find files which replace a distributed runtime files.  You can put a directory after $VIMRUNTIME to find files which add to distributed runtime files.

<a name="myft1">[1]</a>: [runtimepath](https://vimhelp.org/options.txt.html#%27runtimepath%27);
