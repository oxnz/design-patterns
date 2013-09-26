#!/usr/bin/python
#coding: UTF-8

"""Implementation of the abstract factory pattern"""

from abc import abstractmethod

class PetShop:
	"""A pet shop"""
	
	def __init__(self, animal_factory=None):
		"""pet_factory is our abstract factory.
		We can set it at will."""
		self.pet_factory = animal_factory
	def show_pet(self):
		"""Creates and shows a pet using the abstract
		factory"""
		pet = self.pet_factory.get_pet()
		print "Pet: %s says [%s] while eating [%s]" % (pet, pet.speak(), self.pet_factory.get_food())

# Stuff that our factory makes

class Pet:
	@abstractmethod
	def speack(self):
		pass
	@abstractmethod
	def __str__(self):
		return ""

class Dog(Pet):
	def speak(self):
		return "woof!"
	def __str__(self):
		return "Dog"

class Cat(Pet):
	def speak(self):
		return "meow~"
	def __str__(self):
		return "Cat"

class DogFactory:
	def get_pet(self):
		return Dog()
	def get_food(self):
		return "dog food"

class CatFactory:
	def get_pet(self):
		return Cat()
	def get_food(self):
		return "cat food"

# Creates the proper family
def get_factory():
	"""Let's be dynamic!"""
	import random
	return random.choice([DogFactory, CatFactory])()

if __name__ == '__main__':
	# Show pets with various factories
	shop = PetShop()
	for i in range(3):
		shop.pet_factory = get_factory()
		shop.show_pet()
