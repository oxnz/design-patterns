#!/usr/bin/python
#coding: utf-8

from singleton import A

if __name__ == '__main__':
	a1 = A()
	a2 = A()
	assert(a1 == a2)
	assert(id(a1) == id(a2))
	from copy import deepcopy
	a3 = deepcopy(a2)
	assert(a2 == a3)
