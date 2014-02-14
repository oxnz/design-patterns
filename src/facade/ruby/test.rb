#!/usr/bin/env ruby

class Shape
	def draw
		raise NotImplementedError.new
	end
end

class Rectangle < Shape
	def draw
		puts "Rectangle draw"
	end
end

class Square < Shape
	def draw
		puts "Square draw"
	end
end

class Circle < Shape
	def draw
		puts "Circle draw"
	end
end

class ShapeMaker
	attr_reader :circle, :rectangle, :square
	def initialize
		@circle = Circle.new
		@rectangle = Rectangle.new
		@square = Square.new
	end

	def drawCircle
		@circle.draw
	end
	def drawRectangle
		@rectangle.draw
	end
	def drawSquare
		@square.draw
	end
end

sm = ShapeMaker.new
sm.drawCircle()
sm.drawRectangle()
sm.drawSquare()
