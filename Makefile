T :
	@echo to-safe
	@echo from-safe

to-safe :
	perl -0777 -p encode.pl book/chap1.v > book/chap1.v.sav
	perl -0777 -p encode.pl book/Induction.v > book/Induction.v.sav

from-safe :
	perl -0777  -pe 'use MIME::Base64; s/(\\(\\*HIDE\\*\\))(.*?)(\\(\\*UHIDE\\*\\))/$1.decode_base64($2).$3/eigs' chap1.v.sav > chap1.v
	perl -0777  -pe 'use MIME::Base64; s/(\\(\\*HIDE\\*\\))(.*?)(\\(\\*UHIDE\\*\\))/$1.decode_base64($2).$3/eigs' Induction.v.sav > Induction.v
