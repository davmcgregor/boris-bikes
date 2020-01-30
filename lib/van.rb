class Van
  attr_reader :van_bikes
  
  def initialize
    @van_bikes = []
  end

  def get_bikes(station)
    station.bikes.each do |bike|
      if bike.working? == false
        van_bikes << bike
      end
    station.remove_bikes
    end
  end

  def empty_van
    van_bikes.map do |bike|
        van_bikes.delete(bike)
    end
  end

end