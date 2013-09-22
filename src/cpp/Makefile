# Copyright (c) 2013 oxnz, All rights reserved.
SUBDIRS =	\
abstract-factory	\
adapt	\
bridge	\
composite	\
decorator	\
factory-method	\
proxy	\
simple-factory	\
singleton	\
#MAKEFLAGS = -w
ifeq ('Darwin','Darwin')
	CC  := clang
	CXX := clang++
else
	CC  := gcc
	CXX := g++
endif
CFLAGS	:= -Wall -pipe -O2
CXXFLAGS	:= -Wall -pipe -O2
export CC
export CXX
export CFLAGS
export CXXFLAGS
all:
	echo $(CXX)
	@for dir in $(SUBDIRS);	\
		do $(MAKE) -C $$dir || exit 1;	\
		done
clean:
	@for dir in $(SUBDIRS); \
		do $(MAKE) -C $$dir clean || exit 1;	\
		done

.PHONY: clean
