require_relative 'bike'

class DockingStation

attr_reader :single_bike

  def initialize
    @single_bike = []
  end

  def release_bike
    raise 'no more bikes left TODAY try tomorrow' if empty?
    @single_bike.pop
  end

  def return_bike(returned_bike)
    raise 'storage full - TOO MANY BIKES' if full?
    @single_bike << returned_bike
  end

  def show_bike
    @single_bike.last
  end

  private

  def empty?
    @single_bike.empty?
  end

  def full?
    @single_bike.size >= 20
  end
  
end
