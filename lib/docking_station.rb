require_relative 'bike'
class DockingStation
	DEFAULT_CAPACITY = 20
	attr_reader :bike_array

	def initialize
		@bike_array = []
	end

  def release_bike
    fail 'No bikes available' if empty?
    @bike_array.pop
  end

  def dock(bike)
  	fail 'Station is full' if full?
  	@bike_array << bike
  end

	private

	def full?
		@bike_array.length >= DEFAULT_CAPACITY
	end

	def empty?
		@bike_array.empty?
	end

end
