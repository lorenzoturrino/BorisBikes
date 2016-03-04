module BikeContainer

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def load_bike(bike)
    raise "FULL!" if full?
    @bikes << bike
  end

  def list_bikes
    @bikes
  end

  def release_bike
    raise "EMPTY!" if empty?
    @bikes.pop
  end

  private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
