require './lib/docking_station.rb'

docking_station = DockingStation.new(30)

broken_bike = Bike.new
broken_bike.report_broken

docking_station.dock(broken_bike)
docking_station.release_bike #to throw error
