#coding: utf-8

class Singleton(type):
	def __init__(cls, name, bases, dict):
		super(Singleton, cls).__init__(name, bases, dict)
		cls.instance = None
	
	def __call__(cls, *args, **kwargs):
		if cls.instance is None:
			cls.instance = super(Singleton, cls).__call__(*args, **kwargs)
		return cls.instance

class A(object):
	__metaclass__ = Singleton
	# Fix deepcopy problem
	_instance = None
	def __new__(cls, *args, **kwargs):
		if not cls._instance:
			cls._instance = super(A, cls).__new__(cls, *args, **kwargs)
		return cls._instance

if __name__ == '__main__':
	a1 = A()
	a2 = A()
	assert(a1 == a2)
	assert(id(a1) == id(a2))
	from copy import deepcopy
	a3 = deepcopy(a2)
	assert(a2 == a3)
