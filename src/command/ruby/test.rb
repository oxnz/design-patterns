#!/usr/bin/env ruby

class Command
	def initialize(description, function, inverse)
		@description = description
		@function = function
		@inverse = inverse
	end
	def execute
		@function.call unless @function.nil?
	end
	def reverse
		@inverse.call unless @inverse.nil?
	end
end

class CreateFile < Command
	def initialize
		function = Proc.new do
			puts "file created"
		end
		inverse = Proc.new do
			puts "file destroyed"
		end
		super("creating new file", function, inverse)
	end
end

class CheckMemory < Command ##ireversible
	def initialize
		function = Proc.new do
			puts "checking memory ..."
		end
		inverse = Proc.new do
			puts "memory check need not be reversed"
		end
		super("checking memory availability", function, inverse)
	end
end

class Installer
	def initialize
		@commands = []
	end
	def add_command command
		@commands << command
	end
	def install
		@commands.each {|c| c.execute}
	end
	def uninstall
		@commands.reverse.each do |command|
			command.reverse
		end
	end
end

installer = Installer.new
installer.add_command(CheckMemory.new)
installer.add_command(CreateFile.new)
installer.install
installer.uninstall
