class Garage

DEFAULT_CAPACITY = 10

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY) 
    @garage = []
    @bikes = []
  end

  def bike_count
    @bikes.count
  end

  def garage_count
  @garage.count
  end  
  
  def load(bike)
    # if the capacity is reached, raise an exception
   raise "Garage is full" if full?
    @bikes << bike
  end

  def full?
    bike_count == @capacity
  end 

   def release(bike)
    @bikes.delete(bike)
  end





end 