#!/usr/bin/env ruby

require 'singleton'

class AppConfig
	include Singleton
	attr_accessor :data

	def version
		'1.0.0'
	end
end

p AppConfig.instance.data = {enabled: true}
p AppConfig.instance.version

second = AppConfig.instance
p second.data = {enabled: false}
p AppConfig.instance.data
