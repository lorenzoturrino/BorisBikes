require_relative 'docking_station'


dock = DockingStation.new

while true
  bk = Bike.new
  puts "storing bike n#{bk}"
  dock.return_bike(bk)
end
