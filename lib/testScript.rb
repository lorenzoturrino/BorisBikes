require_relative 'docking_station'


dock = DockingStation.new

dock.return_bike(Bike.new)
p dock.release_bike
