#!/bin/bash

function usage() {
	echo "Usage: $0 <new-pattern-name>"
}

function add_pattern() {
	echo "adding pattern: " $1
	if [ -a $1 ]
	then
		echo "*** error: file or directory [" $1 "] already exist"
		return 1
	fi

	mkdir -p $1/cpp
	touch $1/$1.md
	cp ./Makefile.template $1/cpp/Makefile
	cp ./main.cc.template $1/cpp/main.cc
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

