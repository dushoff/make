
# git

add: $(Sources)
	git add $(Sources)

push: commit
	git push

pull: 
	-$(MAKE) commit
	git pull

commit: add
	git commit

autopush: autocommit
	git push

autopull: autocommit
	git pull

autocommit: autocomment.txt add
	git commit -F $<

autocomment.txt:
	gvim -f $@

forget:
	git reset --hard

######################################################################

# Visual

pngtarget: 
	$(MAKE) $<.png
	$(MAKE) $<.png.go

pdftarget:
	$(MAKE) $<.pdf
	$(MAKE) $<.pdf.go

vtarget:
	$(MAKE) $<.go

acrtarget:
	$(MAKE) $<.acr

