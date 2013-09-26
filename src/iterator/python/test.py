#coding: utf-8
'''Implementation of the iterator pattern with a generator

http://ginstrom.com/scribbles/2007/10/08/design-patterns-python-style/
'''

def count_to(count):
	'''Counts by work numbers, up to a maximum of five'''
	numbers = ["one", "two", "three", "four", "five"]
	# The zip keeps from counting over the limit
	for number, pos in zip(numbers, range(count)):
		'''yield可以用来为一个函数返回值塞数据'''
		yield number

# Test the generator
count_to_two = lambda : count_to(2)
count_to_five = lambda : count_to(5)

print 'Counting to two...'
for number in count_to_two():
	print number,
print '\nCounting to five...'
for number in count_to_five():
	print number,
print
