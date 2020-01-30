class Garage
  
  attr_reader :garage_bikes
  
  def initialize
    @garage_bikes = []
  end

  def deliver_bikes(van)
    van.van_bikes.each do |bike|
      garage_bikes << bike
      van.empty_van
    end
  end

  def empty_garage
    garage_bikes.map { |bike| garage_bikes.delete(bike) }
  end

  def fix(bike)
		bike.fix
	end

  def return_fixed_bikes(van)
    garage_bikes.map { |bike| fix(bike) } 
    garage_bikes.each { |bike| van.van_bikes << bike }
    empty_garage
  end
end