class Garage

  include BikeContainer

  def fix_all_bikes
    @bikes.each do |broken_bike|
      broken_bike.fix
    end
  end

end
