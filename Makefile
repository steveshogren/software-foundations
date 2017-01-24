T :
	@echo to-safe
	@echo from-safe

to-safe :
	perl -0777 -p encode.pl book/chap1.v > book/chap1.v.sav
	perl -0777 -p encode.pl book/Induction.v > book/Induction.v.sav

from-safe :
	perl -0777  -p decode.pl book/chap1.v.sav > book/chap1.v
	perl -0777  -p decode.pl book/Induction.v.sav > book/Induction.v
