require_relative 'bike'

class DockingStation

attr_reader :single_bike

  def initialize
    @single_bike = []
  end

  def release_bike
    raise 'no more bikes left TODAY try tomorrow' if @single_bike.empty?
    @single_bike.pop
  end

  def return_bike(returned_bike)
    raise 'storage full - TOO MANY BIKES' if @single_bike.size > 19
    @single_bike << returned_bike
  end

  def show_bike
    @single_bike.last
  end
end
