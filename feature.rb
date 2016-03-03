require_relative './lib/docking_station'

stat = DockingStation.new(4)
p bike = Bike.new
 stat.dock(bike,'broken')
p stat.release_bike
