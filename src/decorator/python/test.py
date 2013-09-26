#!/usr/bin/env python
#-*- coding: utf-8 -*-

class Foo(object):
	def f1(self):
		print ("original f1")
	def f2(self, x):
		print ("original f2: %s") % x

class DecoratedFoo(object):
	def __init__(self, decoratee):
		self._decoratee = decoratee
	def f1(self):
		print ("decorated f1")
		self._decoratee.f1()
	def __getattr__(self, name):
		return getattr(self._decoratee, name)

if __name__ == '__main__':
	f = Foo()
	df = DecoratedFoo(f)
	df.f1()
	f.f2('x')
	df.f2('xyz')
