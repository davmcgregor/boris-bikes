require_relative 'bike'
require_relative 'van'
require_relative 'garage'

class DockingStation    
  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize (capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end
  
  def release_bike        
    fail 'No bikes available' if empty?
    fail 'Cannot release broken bike' if bikes.last.working? == false 
    bikes.last
  end

  def dock(bike)
    fail 'Docking station full' if full?
    bikes << bike
  end

  private

  attr_reader :bikes

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end
end





