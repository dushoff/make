
# git

add: $(Sources)
	git add $(Sources)

push: commit.time
	git push -u origin master

pull: commit.time
	git pull
	date > $<

commit.time: $(Sources)
	date > $@
	$(MAKE) add
	$(MAKE) gitcomment.txt
	git commit -F gitcomment.txt
	date > $@

gitcomment.txt: $(Sources)
	echo Autocommit > $@
	git commit --dry-run >> $@
	gvim -f gitcomment.txt

remove:
	git rm $(remove)

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

