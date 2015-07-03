current: target

target pngtarget pdftarget vtarget acrtarget: notarget

repo = git@github.com:dushoff

##################################################################

# make files

# local.mk is not a source file, but you probably want to make one

Sources = Makefile default.mk gnome.mk linux.mk windows.mk Makefile.generic

##################################################################

local = default
-include ../make/local.mk
include ../make/$(local).mk

