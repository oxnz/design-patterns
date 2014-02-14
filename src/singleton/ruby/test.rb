#!/usr/bin/env ruby

require 'singleton'

class Example
	include Singleton
	attr_accessor :keep, :strip
	def _dump(depth)
		# this strips the @strip information from the instance
		Marshal.dump(@keep, depth)
	end

	def self._load(str)
		instance.keep = Marshal.load(str)
		instance
	end
end

a = Example.instance

a.keep = "keep this"
a.strip = "get rid of this"
a.taint

stored_state = Marshal.dump(a)

a.keep = nil
a.strip = nil
b = Marshal.load(stored_state)
p a == b # => true
p a.keep # => "keep this"
p a.strip # => nil
