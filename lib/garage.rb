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
    garage_bikes.map do |bike|
      garage_bikes.delete(bike)
    end
  end

  def return_fixed_bikes(van)
    garage_bikes.map{ |b| b = b.fix }
    van.van_bikes << garage.bikes
    empty_garage
  end
end