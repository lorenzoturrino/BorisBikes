require './lib/docking_station.rb'

docking_station = DockingStation.new

20.times do |bike_number|
	puts "docking bike #{bike_number}"
	docking_station.dock(Bike.new)
end # this should not fail

docking_station.dock(Bike.new) #this should fail.
