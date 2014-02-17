# Copyright (c) 2013 oxnz, All rights reserved.
#
# Version:	1.0
# Revision:	---
# Author:	oxnz <yunxinyi@gmail.com>


SUBDIRS =	\
strategy	\
simple-factory	\
prototype	\
state	\
memento	\
memento	\
memento	\
private-class-data	\
null-object	\
iterator	\
template	\
observer	\
state	\
memento	\
mediator	\
abstract-factory	\
adapter	\
bridge	\
builder	\
chain-of-responsibility	\
command	\
composite	\
decorator	\
facade	\
factory-method	\
flyweight	\
interpreter	\
prototype	\
proxy	\
simple-factory	\
singleton	\
strategy	\
visitor	\
#SUBDIR_END
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
	@for dir in $(SUBDIRS);	\
		do $(MAKE) -C $$dir/cpp || exit 1;	\
		done
clean:
	@for dir in $(SUBDIRS); \
		do $(MAKE) -C $$dir/cpp clean || exit 1;	\
		done

update: Readme.md
	@find . -type d -depth 1 -exec basename {} \; | sed -e '1d' >> Readme.md


.PHONY: update clean
