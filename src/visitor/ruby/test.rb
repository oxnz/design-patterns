#!/usr/bin/env ruby

class Node
	def accept visitor
		raise NotImplementedError.new
	end
end

module Visitable
	def accept visitor
		visitor.visit(self)
	end
end

class IntegerNode < Node
	include Visitable
	attr_reader :value
	def initialize value
		@value = value
	end
end

class StringNode < Node
	include Visitable
	attr_reader :value
	def initialize value
		@value = value
	end
end

class Ast < Node
	def initialize
		@nodes = []
		@nodes << IntegerNode.new(2)
		@nodes << StringNode.new("3")
	end

	def accept visitor
		@nodes.each do |node|
			node.accept visitor
		end
	end
end

class BasicVisitor
	def visit subject
		method_name = "visit_#{subject.class}".intern
		send(method_name, subject)
	end
end

class DoublerVisitor < BasicVisitor
	def visit_IntegerNode subject
		puts subject.value * 2
	end

	def visit_StringNode subject
		puts subject.value.to_i * 2
	end
end

class TriplerVisitor < BasicVisitor
	def visit_IntegerNode subject
		puts subject.value * 3
	end

	def visit_StringNode subject
		puts subject.value.to_i * 3
	end
end

ast = Ast.new
puts "Doubler:"
ast.accept DoublerVisitor.new
puts "Tripler:"
ast.accept TriplerVisitor.new
