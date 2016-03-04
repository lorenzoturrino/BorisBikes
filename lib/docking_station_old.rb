require_relative 'bike'
require_relative 'bike_container'

class DockingStation

  include BikeContainer

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes to release' if empty?
    @bikes.each do |bike|
      if bike.broken == false
        @bikes.delete(bike)
        return bike
      end
    end
    fail 'No bikes to release'
  end

  def dock (bike)
    fail 'Docking Station full' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count == @capacity
  end

  def empty?
    @bikes.empty?
  end

end
