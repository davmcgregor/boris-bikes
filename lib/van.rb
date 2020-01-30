class Van
  attr_reader :van_bikes
  
  def initialize
    @van_bikes = []
  end

  def get_bikes(station)
    station.bikes.each do |bike|
      if bike.broken? == true
        van_bikes << bike
      end
    station.remove_bikes
    end
  end

  def empty_van
    van_bikes.map { |bike| van_bikes.delete(bike) }
  end

  def distribute_bikes(station)
    van_bikes.each { |bike| station.bikes << bike }
    empty_van
  end
end