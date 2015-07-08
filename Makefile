current: target

target pngtarget pdftarget vtarget acrtarget: notarget

repo = git@github.com:dushoff

##################################################################

# make files

md = ../make/

Sources = Makefile default.mk gnome.mk linux.mk windows.mk Makefile.generic

##################################################################

local = default
-include $(md)/local.mk
include $(md)/$(local).mk

