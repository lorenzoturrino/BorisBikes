require './lib/docking_station.rb'

docking_station = DockingStation.new

while true
	bike = Bike.new
	docking_station.dock(bike)
end