class Passenger
  attr_reader :name
  @@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def rides
  Rides.all.select do |ride|
    ride.passenger == self
  end
end

def drivers
  # Here I'm calling the instance of rides as defined above
  # instead of re-iterating through the Rides class.
  rides.collect do |ride|
    ride.driver
  end
end




end
