
# git

add: $(Sources)
	git add $(Sources)

push: commit.time
	git push

pull: commit.time
	git pull
	touch $<

commit.time: $(Sources)
	date > $@
	$(MAKE) add
	$(MAKE) gitcomment.txt
	git commit -F gitcomment.txt

gitcomment.txt: $(Sources)
	echo Autocommit > $@
	git commit --dry-run >> $@
	gvim -f gitcomment.txt

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

