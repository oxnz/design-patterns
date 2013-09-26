#!/usr/bin/python
#coding: utf-8

class Subject(object):
	def __init__(self):
		self._observers = []
	def attach(self, observer):
		if not observer in self._observers:
			self._observers.append(observer)
	def detach(self, observer):
		try:
			self._observers.remove(observer)
		except ValueError:
			pass
	def notify(self, modifier=None):
		for observer in self._observers:
			if modifier != observer:
				observer.update(self)

# Example usage
class DataSubject(Subject):
	def __init__(self, name=""):
		super(DataSubject, self).__init__()
		self.name = name
		self._data = 0
	@property
	def data(self):
		return self._data

	@data.setter
	def data(self, data):
		self._data = data
		self.notify()

class Observer:
	def __init__(self):
		pass
	def update(self, subject):
		pass

class DataObserver(Observer):
	def update(self, subject):
		print ("DataSubject: %s has data %d") % (subject.name, subject.data)

def test():
	d1 = DataSubject("DataSubject 1")
	d2 = DataSubject("DataSubject 2")
	ob1 = DataObserver()
	ob2 = DataObserver()
	d1.attach(ob1);
	d1.attach(ob2);
	d2.attach(ob1);
	d2.attach(ob2);

	print ("setting DataSubject 1 to 10")
	print d1.data
	d1.data = 10
	print ("setting DataSubject 2 to 14")
	d2.data = 14
	print ("data 1 detach ob2")
	d1.detach(ob2)
	print ("setting DataSubject 1 to 20")
	d1.data = 20
	print ("data 1 detach ob1")
	d1.detach(ob1)
	print ("setting DataSubject 1 to 30")
	d1.data = 30

if __name__ == '__main__':
	test()
