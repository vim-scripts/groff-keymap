"
" Name:        groff keymap selection file
" Maintainer:  Alejandro López-Valencia <dradul@yahoo.com>
" Version:     1.0
" Last Change: 2004-08-03T09:25:58-0500.
"
" Notes:
"
" Notice that some of the code in this keymap selection file is of
" academic interest only and unnecessary for production code.
"  
" 
scriptencoding = latin1

let encoding = &enc
if encoding == 'latin1'
    if has("unix")
	let encoding = 'latin1'
    else
	let encoding = 'cp1252'
    endif
endif

if encoding == 'utf-8'
	source <sfile>:p:h/groff_utf-8.vim
elseif encoding == 'cp1252
	source <sfile>:p:h/groff_latin1.vim
else
	source <sfile>:p:h/groff_latin1.vim
endif
