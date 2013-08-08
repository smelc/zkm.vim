zkm.vim
=======

A vim mode for zkm script files (www.zelix.com/klassmaster/)

To use it, copy zkm.vim to ~/.vim/syntax/

Set the following into your .vimrc for the mode to be applied automatically to files with the .zkm extension:

```
" au BufRead,BufNewFile *.zkm setfiletype zkm
```

Use this to get the colors right (if your terminal does not support 256 colors, install ncurses-term on ubuntu):

```
" set t_Co=256
```
