class Van

def initialize(options = {})
    @van = []
    @bikes = []
  end

def bike_count
    @bikes.count
  end

def van_count
@van.count
end  
  
  def dock(bike)
    # if the capacity is reached, raise an exception
   raise "Station is full" if full?
    @bikes << bike
  end








end  