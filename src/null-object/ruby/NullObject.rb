class NullObject
	def method_missing(*args, &block)
		self
	end
	def to_a
		[]
	end
	def to_s
		""
	end
	def to_f
		0.0
	end
	def to_i
		0
	end
	def nil?
		true
	end
	def present?
		false
	end
	def empty?
		true
	end
	def !
		true
	end
end
