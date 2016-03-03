require_relative './lib/docking_station'

stat = DockingStation.new(40)
p bike = Bike.new
stat.dock(bike)
p stat.release_bike

41.times do |iteration_number|
  puts "docking bike #{iteration_number}"
  stat.dock(Bike.new)
end
