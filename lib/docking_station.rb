require_relative 'bike'

class DockingStation    
    DEFAULT_CAPACITY = 20

    attr_reader :capacity

    def initialize (capacity=DEFAULT_CAPACITY)
        @capacity = capacity
        @bikes = []
    end
  
    def release_bike        
        fail 'No bikes available' if empty?
        if bikes.last.broken?
            bikes.rotate
        else 
            bikes.pop
        end
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





