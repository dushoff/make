
# git

add: $(Sources)
	git add $(Sources)

push: commit
	git push

pull: 
	git pull

forget:
	git reset --hard

commit: add
	git commit


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

