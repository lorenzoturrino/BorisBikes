require './lib/docking_station.rb'

docking_station = DockingStation.new

bike = Bike.new
bike.report_broken

repair_van = Van.new
repair_van.send_to_repair(bike)

workshop = Garage.new
workshop.repair_bike(bike)

repair_van.send_to_dock(fixed_bike)