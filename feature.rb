require_relative './lib/docking_station'

stat = DockingStation.new(4)
p bike = Bike.new
stat.dock(bike)
p stat.release_bike

stat.dock(bike,'broken')


