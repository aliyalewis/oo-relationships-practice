class Driver
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
    ride.driver == self
  end
end

end
