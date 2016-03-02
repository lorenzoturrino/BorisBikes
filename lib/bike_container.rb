module BikeContainer

  DEFAULT_CAPACITY = 20
  attr_reader :capacity , :bike_array

  def initialize(custom_cap=nil)
    @bike_array = []
    @capacity = custom_cap || DEFAULT_CAPACITY
  end

  def store_bike(bike_to_store)
    raise "storage is full" if storage_full?
    @bike_array << bike_to_store
  end

  def release_bike
    raise "storage is empty" if storage_empty?
    @bike_array.pop
  end

  def storage_full?
    @bike_array.size == @capacity
  end

  def storage_empty?
    @bike_array.empty?
  end
end
