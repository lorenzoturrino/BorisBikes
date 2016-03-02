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

  #def fix
  #  @bikes.each do |bike|
  #    bike.broken = false
  #  end
  #end

end
