# ruby './spec/feature_test_spec.rb'

require './lib/docking_station.rb'
require './lib/bike.rb'
require './lib/van.rb'
require './lib/garage.rb'

broken_bike = Bike.new
broken_bike.report_broken
good_bike = Bike.new
station = DockingStation.new
station.dock(broken_bike)
station.dock(good_bike)
puts "station.bikes"
print station.bikes

van = Van.new
van.get_bikes(station)
puts "van.van_bikes"
print van.van_bikes
puts "station.bikes"
print station.bikes

garage = Garage.new
garage.deliver_bikes(van)
puts "garage.garage_bikes"
print garage.garage_bikes
puts "van.van_bikes"
print van.van_bikes

garage.return_fixed_bikes(van)
puts "empty garage.garage_bikes"
print garage.garage_bikes
van.distribute_bikes(station)
puts "empty van.van_bikes"
print van.van_bikes

puts "station"
print station.bikes



