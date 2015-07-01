SHELL = cmd.exe
include default.mk

%.go: %
	explorer $<

commit: add
	gvim -f gitcomment.txt
	git commit -F gitcomment.txt
