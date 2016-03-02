require 'garage'

class Van
	DEFAULT_CAPACITY = 10
	attr_reader :van_capacity, :van_array

	def initialize(custom_cap = nil)
		@van_capacity = custom_cap || DEFAULT_CAPACITY
		@van_array = []
	end

	def load_bike(bike)
		@van_array << bike
	end

	def unload_bike
		@van_array.pop
	end
end