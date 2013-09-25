#-*- coding: utf-8 -*-

class State:
	'''
	@summary: 状态父类，用于抽象状态方法，
		+每增加一种状态，只需要增加一个子类，并修改相关状态的跳转

	@ivar ivar: type

	@author: 0xnz
	@since: 2013-9-25
	@change:
	'''

	def __init__(self):
		pass
	
	def operate(self, w):
		pass

class MorningState(State):
	def operate(self, w):
		if w.getHour() < 12:
			print 'time now: %d, working' % w.getHour()
		else:
			w.setState(NoonState())
			w.operate()

class NoonState(State):
	def operate(self, w):
		if w.getHour() < 14:
			print 'time now: %d, eating launch' % w.getHour()
		else:
			w.setState(EveningState())
			w.operate()

class EveningState(State):
	def operate(self, w):
		if w.getHour() < 18:
			print 'time now: %d, eating dinner' % w.getHour()
		else:
			print 'time now: %d, watching TV' % w.getHour()

