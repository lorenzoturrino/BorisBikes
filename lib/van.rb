class Van

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

end
