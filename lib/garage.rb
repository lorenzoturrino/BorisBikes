class Garage

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def take_bikes (location, to_fix)
    location.each do |bike|
      if bike.broken == to_fix
        location.delete(bike)
        @bikes << bike
      end
    end
  end

  def fix_all_bikes
    @bikes.each do |broken_bike|
      broken_bike.fix
    end
  end

end
