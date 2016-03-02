require 'van'

class Garage
	DEFAULT_CAPACITY = 200
	attr_reader :garage_array, :garage_capacity

	def initialize(custom_cap=nil)
		@garage_capacity = custom_cap || DEFAULT_CAPACITY
		@garage_array = []
	end

	def accept_bikes(broken_bikes)
		@garage_array << broken_bikes
	end

	def return_bikes
		@garage_array.pop
	end
end