#-*- coding: utf-8 -*-

from state import MorningState

class Work:
	def __init__(self):
		self.__hour = 8
		self.__state = MorningState()
	
	def getHour(self):
		return self.__hour
	def setHour(self, h):
		self.__hour = h
	def setState(self, state):
		self.__state = state
	def operate(self):
		self.__state.operate(self)

