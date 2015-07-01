current: target

target pngtarget pdftarget vtarget acrtarget: notarget

##################################################################

# make files

# local.mk is not a source!

Sources = Makefile default.mk gnome.mk linux.mk windows.mk

##################################################################

local = default
-include ../make/local.mk
include ../make/$(local).mk

