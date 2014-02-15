class Address
	attr_accessor :street, :street2, :city, :state, :zip, :address_type

	def initialize(&block)
		#set default values
		self.city = "Chicago"
		self.state = "IL"
		#set values from block
		instance_eval &block if block_given?
	end
end

def testDefaultValues
	myaddress = Address.new
	assert_equal("Chicago", myaddress.city)
	assert_equal("IL", myaddress.state)
end

def testStreetStateZip
	myaddress = Address.new do
		self.street = "this is the street"
		self.zip = "11111"
	end
	assert_equal("Chicago", myaddress.city)
	assert_equal("IL", myaddress.state)
	assert_equal("this is the street", myaddress.street)
	assert_equal("11111", myaddress.zip)
end

testDefaultValues()
