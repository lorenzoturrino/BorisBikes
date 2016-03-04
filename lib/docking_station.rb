require_relative 'bike_container'
require_relative 'bike'

class DockingStation

  include BikeContainer

  def release_bike_to_user
    @bikes.each do |bike|
      if bike.broken == false
        @bikes.delete(bike)
        return bike
      end
    end
    raise "EMPTY!"
  end

end
