#coding: utf-8

"""
Implementation singleton pattern


Singleton is the metaclass of class A, and class A is singleton
http://stackoverflow.com/questions/100003/what-is-a-metaclass-in-python
"""

__author__ = '0xnz'
__email__ = '<yunxinyi AT gmail.com>'
__version__ = '1.0'

class Singleton(type):
	"""__new__ is not neccessary
	delete the __new__ method, all operate well
	"""
	def __new__(cls, name, bases, dct):
		return super(Singleton, cls).__new__(cls, name, bases, dct)
	def __init__(cls, name, bases, dct):
		super(Singleton, cls).__init__(name, bases, dct)
		cls.__instance = None
	def __call__(cls, *args, **kwargs):
		if cls.__instance is None:
			cls.__instance = super(Singleton, cls).__call__(*args, **kwargs)
		return cls.__instance

class A(object):
	__metaclass__ = Singleton
	# Fix deepcopy problem
	__instance = None
	def __new__(cls, *args, **kwargs):
		if not cls.__instance:
			cls.__instance = super(A, cls).__new__(cls, *args, **kwargs)
		return cls.__instance

