class Van

  include BikeContainer

  def pick_up(location)
    no_bikes_to_pick_up = true
    location.bikes.each do |bike|
      if bike.broken == true
        no_bikes_to_pick_up = false
        load_bike(bike)
        location.bikes.delete(bike)
      end
    end
    raise 'No bikes available!' if no_bikes_to_pick_up
  end

end
