#
# Makefile for linux bwusage program
#

PROGS		= bwusage

PREFIX		= /usr/local
BINDIR		= $(PREFIX)/bin

all:
	@echo Run \"make install\" \(as root\).

install:
	@echo "Installing program."
	@for prog in $(PROGS); do \
		cp $$prog $(BINDIR); \
		chmod 755 $(BINDIR)/$$prog; \
	done
