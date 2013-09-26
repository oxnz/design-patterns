#coding: utf-8

'''
@author: Diogenes Augusto Fernandes Herminio <diofeher@gmail.com>
https://gist.github.com/420905#file_builder_python.py
'''

# Director
class Director(object):
	def __init__(self):
		self._builder = None
	@property
	def builder(self):
		return self._builder
	@builder.setter
	def builder(self, builder):
		self._builder = builder
	
	def construct_building(self):
		self._builder.new_building()
		self._builder.build_floor()
		self._builder.build_size()
	
	def get_building(self):
		return self._builder.building

# Abstract Builder
class Builder(object):
	def __init__(self):
		self.building = None
	
	def new_building(self):
		self.building = Building()
	
# Concrete Builder
class HouseBuilder(Builder):
	def build_floor(self):
		self.building.floor = 'One'
	def build_size(self):
		self.building.size = 'Big'

class FlatBuilder(Builder):
	def build_floor(self):
		self.building.floor = 'More than One'
	def build_size(self):
		self.building.size = 'Small'

# Product
class Building(object):
	def __init__(self):
		self._floor = None
		self._size = None
	@property
	def floor(self):
		return self._floor
	@floor.setter
	def floor(self, floor):
		self._floor = floor
	@property
	def size(self):
		return self._size
	@size.setter
	def size(self, size):
		self._size = size
	
	def __repr__(self):
		return 'Floor: %s | Size: %s' % (self.floor, self.size)

# Client
def test():
	director = Director()
	director.builder = HouseBuilder()
	director.construct_building()
	building = director.get_building()
	print building
	director.builder = FlatBuilder()
	director.construct_building()
	building = director.get_building()
	print building

if __name__ == '__main__':
	test()
