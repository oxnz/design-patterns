#!/bin/bash

function usage() {
	echo "Usage: $0 <new-pattern-name>"
}

function add_pattern() {
	echo "adding pattern: " $1
	if [ -f $1 ]
	then
		echo "*** error: file [" $1 "] already exist"
		return 1
	fi

	mkdir -p $1/cpp
	mkdir -p $1/java
	mkdir -p $1/python
	mkdir -p $1/php
	touch $1/$1.md
	if [ ! -f $1/cpp/Makefile ]
	then
		cp ./Makefile.template $1/cpp/Makefile
	fi
	if [ ! -f $1/cpp/main.cc ]
	then
		cp ./main.cc.template $1/cpp/main.cc
	fi
	if [ ! -f $1/java/build.xml ]
	then
		cp ./build.xml.template $1/java/build.xml
		sed -i -e "s/Proxy/$1/g" $1/java/build.xml
		unlink $1/java/build.xml-e
	fi
	if [ ! -f $1/java/Test.java ]
	then
		cp ./Test.java.template $1/java/Test.java
	fi
	if [ ! -f $1/python/test.py ]
	then
		echo "#!/usr/bin/python" > $1/python/test.py
		echo "#coding: utf-8" >> $1/python/test.py
	fi
	sed -i -e "/^SUBDIR/ a\\
		$1	\\\\
		" Makefile
	unlink Makefile-e
}


if [ $# -lt 1 ]
then
	echo "*** parameters error: [$@]"
	usage
	exit 1
else
	for arg in $*
	do
		add_pattern $arg
		if [ $? -ne 0 ]
		then
			echo "add pattern [" $arg "] failed"
		fi
	done
fi

