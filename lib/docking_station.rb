require_relative 'bike'

class DockingStation

  def initialize
    @bikes = []
  end

  attr_reader :bikes

  def release_bike
    fail 'No bikes to release' if @bikes.nil?
    Bike.new
  end

  def dock bike
    fail 'Docking Station full' if @bikes.length == 1
    @bikes << bike
  end

end
