require_relative 'bike'

class DockingStation

attr_reader :single_bike

  def initialize
    @single_bike = Bike.new
  end

  def release_bike
    raise 'no more bikes left TODAY' unless @single_bike
    out_bike, @single_bike = @single_bike, nil
    out_bike
  end

  def return_bike(returned_bike)
    raise 'storage full - TOO MANY BIKES'if @single_bike
    @single_bike = returned_bike
  end

  def show_bike
    puts "this is a bike"
    @single_bike
  end
end
