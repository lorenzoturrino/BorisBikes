require_relative 'bike'
class DockingStation
	attr_reader :bike_array

	def initialize
		@bike_array = []
	end

  def release_bike
    fail 'No bikes available' if @bike_array.empty?
    @bike_array.pop
  end

  def dock(bike)
  	fail 'Station is full' if @bike_array.length >= 20
  	@bike_array << bike
  end

end
