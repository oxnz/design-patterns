require 'observer'

class Notifier
	def update(car, miles)
		puts "The car has logged #{miles} miles, totaling #{car.mileage} miles traveled."
		puts "The car needs to be taken in for a service!" if car.service \
			< car.mileage
	end
end

class Car
	include Observable
	attr_reader :mileage, :service

	def initialize(mileage = 0, service = 3000)
		@mileage, @service = mileage, service
		add_observer(Notifier.new)
	end

	def log(miles)
		@mileage += miles
		changed
		notify_observers(self, miles)
	end
end

car = Car.new(2300, 3000)
car.log(100)
car.log(354)
car.log(300)
