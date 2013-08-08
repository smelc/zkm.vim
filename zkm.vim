" Vim syntax file for zkm (zelix klass master) files

" To use this : copy this file to ~/.vim/syntax/
"
" copy this into your .vimrc:
" 
" set t_Co=256 " (if your terminal does not support 256 colors, install ncurses-term on ubuntu)
" au BufRead,BufNewFile *.zkm setfiletype zkm 

if exists("b:current_syntax")
	finish
endif

syntax keyword zkmKeywords and classpath exclude open unexclude obfuscate saveAll
syntax keyword zkmOperators "!" "&" "^" "+" "*"
syntax keyword zkmKeys archiveCompression aggressiveMethodRenaming autoReflectionHandling changeLogFileIn changeLogFileOut collapsePackagesWithDefault encryptStringLiterals exceptionObfuscation keepGenericsInfo keepInnerClassInfo lineNumbers obfuscateFlow
syntax keyword zkmValues all aggressive false flowObfuscate heavy ifNameNotObfuscated normal scramble true

syntax region zkmComment start="/\*"  end="\*/" 
syntax match zkmLineComment "//.*" 

syntax region zkmInclude start="%"  end="%" 

highlight def link zkmComment Comment
highlight def link zkmLineComment Comment

" general format:
" highlight Statement   term=bold      cterm=NONE ctermfg=white     ctermbg=NONE   " gui=bold       guifg=#ffff60    guibg=NONE
highlight zkmKeyWordsColor cterm=bold ctermfg=5
highlight zkmOperatorsColor cterm=NONE ctermfg=2
highlight zkmKeysColor cterm=NONE ctermfg=2
highlight zkmValuesColor cterm=NONE ctermfg=3
highlight zkmIncludeColor cterm=bold ctermfg=1 

" link the (left) element with its color (right)
highlight def link zkmKeywords zkmKeyWordsColor
highlight def link zkmOperators zkmOperatorsColor
highlight def link zkmKeys zkmKeysColor
highlight def link zkmValues zkmValuesColor
highlight def link zkmInclude zkmIncludeColor
