"
" Name:        groff utf-8 keymap conversion file
" Maintainer:  Alejandro López-Valencia <dradul@users.sourceforge.net>
" Version:     1.0
" Last Change: 2004-08-03T09:35:36-0500.
" 
" 
" NOTES:
" 
" This is a demonstration of the kind of abuse vim can handle and the
" mischief you can accomplish without delving into hard code
" programming. You don't need emacs to brew coffee....
" 
" This keymap works with groff and for the default Western fonts
" supplied with it. It should work with ATT ditroff as well because I
" used the old ATT syntax, but you may be in for a disappointing
" surprise in such case: accented characters will be mostly faked.
" This file covers codepage win-1252, because that's what I use in my
" workstation. If you use some sort of Unix, your default codepage
" will be ISO-8859-1, also known as Latin-1.  There are several
" obvious differences, all additions in the decimal codepoints 128-159
" are control codes in Latin-1.
" 
" If you need a different keymap, say for latin2 or cyrillic, you are
" welcome to use these example files as a starting point. As well,
" I'll appreciate if you contribute it to this package in order to
" have a centralized distribution (you are welcome to take over
" ownership, I don't look much at this package anymore!). I strongly
" recommend that in such case, you use groff 1.19.1 or a later version
" because it can handle proper unicode decomposition.
" 
" While testing these keymap files I discovered an intersting
" side-effect due to the way vim manages keymap files. Namely, that
" the _active_ key mappings are those you can actually access with the
" keyboard while in insert mode. If you can switch your keyboard
" mappings on-the-fly, as recent versions of Windows, can, you can
" type several different Western Europe languages by switching
" keyboard mappings at the OS level.
" 
" For example, in my keyboard with an Standard Spanish layout, there
" is no way to access directly an etsset «ß» using this keymap,
" therefore the keymapping doesn't work. That is, I can type
" <ctr-k>ss but it won't produce a troff request \[ss] but rather
" the 8-byte code «ß» as defined in the encoding.
"
"
" ´	\\(aa	These naked accents break more than they fix.  
" ¨	\\(ad 
" ¯	\\(a- 
" ¸	\\(ac 
" 	\\(a^ 
" 	\\(a~
" 
scriptencoding utf-8

let b:keymap_name = "groff_utf-8"

loadkeymap
¡	\\(r!		Begins true ISO-8859-1
¢	\\(Cs
£	\\(Po
¤	\\(ct
¥	\\(Ye
¦	\\(bb
§	\\(sc
©	\\(co
ª	\\(Of
«	\\(Fo
¬	\\\[tno\]
­	\\(hy
®	\\(rg
°	\\(de
±	\\[t+-]
²	\\(S2
³	\\(S3
µ	\\(mc
¶	\\(ps
·	\\(pc
¹	\\(S1
º	\\(Om
»	\\(Fc
¼	\\(14
½	\\(12
¾	\\(34
¿	\\(\r?
À	\\(`A
Á	\\('A
Â	\\(^A
Ã	\\(~A
Ä	\\(:A
Å	\\(oA
Æ	\\(AE
Ç	\\(,C
È	\\(`E
É	\\('E
Ê	\\(^E
Ë	\\(:E
Ì	\\(`I
Í	\\('I
Î	\\(^I
Ï	\\(:I
Ð	\\(-D
Ñ	\\(~N
Ò	\\(`O
Ó	\\('O
Ô	\\(^O
Õ	\\(~O
Ö	\\(:O
×	\\\[tmu\]
Ø	\\(/O
Ù	\\(`U
Ú	\\('U
Û	\\(^U
Ü	\\(:U
Ý	\\('Y
Þ	\\(TP
ß	\\(ss
à	\\(`a
á	\\('a
â	\\(^a
ã	\\(~a
ä	\\(:a
å	\\(oa
æ	\\(ae
ç	\\(,c
è	\\(`e
é	\\('e
ê	\\(^e
ë	\\(:e
ì	\\(`i
í	\\('i
î	\\(^i
ï	\\(:i
ð	\\(-d
ñ	\\(~n
ò	\\(`o
ó	\\('o
ô	\\(^o
õ	\\(~o
ö	\\(:o
÷	\\[tdi\]
ø	\\(/o
ù	\\(`u
ú	\\('u
û	\\(^u
ü	\\(:u
ý	\\('y
þ	\\(Tp
ÿ	\\(:y		Ends true ISO-8859-1
	\\(eu		Begins the extra chars in 8bit-cp1252
	\\(bq
	\\(Fn
	\\(Bq
	\\\[u2026\]	Use the current font's ellipsis, not the special's
	\\(dg
	\\(dd
	\\(%0
	\\(vS
	\\(fo
	\\(OE
	\\(vZ
	\\(oq
	\\(cq
	\\(lq
	\\(rq
	\\(bu
	\\(en
	\\(em
	\\(tm
	\\(vs
	\\(fc
	\\(oe
	\\(vz
	\\(:Y		Ends the extra 8bit-cp1252 chars
