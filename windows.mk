SHELL = cmd.exe
include $(md)/default.mk

%.go: %
	explorer $<
