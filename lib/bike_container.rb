module BikeContainer

  DEFAULT_CAPACITY = 20

  attr_accessor :bikes

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def load_bike(bike)
    raise "FULL!" if full?
    @bikes << bike
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
