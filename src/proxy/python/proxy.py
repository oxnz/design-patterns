#!/usr/bin/env python
#-*- coding: utf-8 -*-

'''
Python中的委派机制(delegation）使得Proxy的实现可以非常的简洁优美。
如下，利用__getattr__，使得程序具有完整的通用性(generic)
这是动态语言特有的优势，见Dive Into Python第四章，自省的魅力，

Python 中万 物皆对象,自省指代码可以查看内存中以对象形式存在的其它模块和函数,
获取它们的信息，并对它们进行操作。
利用这种方法，你可以定义没有名称的函数，不按函数声明的参数顺序调用函数,
甚至引用事先并不知道名称的函数（getattr)。

getattr(object, name[, default]) -> value

Get a named attribute from an object; getattr(x, 'y') is equivalent to x.y. 
When a default argument is given, it is returned when the attribute doesn't 
exist; without it, an exception is raised in that case.
'''

from implementation import Implementation

class Proxy:
	def __init__(self):
		self.__implementation = Implementation()
	
	def __getattr__(self, name):
		return getattr(self.__implementation, name)
