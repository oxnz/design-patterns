# Copyright (c) 2013 oxnz, All rights reserved.
SUBDIRS = adapt bridge proxy singleton composite decorator
#MAKEFLAGS = -w
all:
	@for dir in $(SUBDIRS);	\
		do $(MAKE) -C $$dir || exit 1;	\
		done
clean:
	@for dir in $(SUBDIRS); \
		do $(MAKE) -C $$dir clean || exit 1;	\
		done

.PHONY: clean
