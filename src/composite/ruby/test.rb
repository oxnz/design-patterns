#!/usr/bin/env ruby

class Part
	def initialize name
		@name = name
	end
	def weight
		0
	end
end

class Hand < Part
	def initialize
		super("Hand")
		@children = []
		5.times {add_child Finger.new}
	end
	def weight # component object
		weight = 5
		@children.each { |c| weight += c.weight }
		weight
	end
	def add_child child
		@children << child
	end
end

class Finger < Part
	def initialize
		super("Finger")
	end

	def weight # Leaf object
		1
	end
end

hand = Hand.new
puts hand.weight
