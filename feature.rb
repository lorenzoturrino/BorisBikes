require_relative './lib/docking_station'
require_relative './lib/van'

stat = DockingStation.new(4)
bike = Bike.new
stat.dock(bike)
p stat.release_bike

van = Van.new
