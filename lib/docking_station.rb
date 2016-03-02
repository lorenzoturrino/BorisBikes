require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes to release' if empty?
    bikesallbroken = true
    @bikes.each do |bike|
      if bike.broken == false
        bikesallbroken = false
        @bikes.delete(bike)
        return bike
        break
      end
    end
    fail 'No bikes to release' if bikesallbroken == true
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
