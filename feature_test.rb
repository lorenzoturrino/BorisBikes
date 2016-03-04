require_relative "lib/docking_station"
require_relative "lib/garage"
require_relative "lib/bike"

broken_array = Array.new(5) {Bike.new}
broken_array.each {|bike| bike.report_broken}

gar = Garage.new
gar.take_bikes(broken_array,true)

gar.fix_all_bikes

p gar
