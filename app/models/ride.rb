class Rides
attr_reader :passenger, :driver
attr_accessor :distance
@@all = []

def initialize(passenger, driver, distance = 0.0)
  @passenger = passenger
  @driver = driver
  @@all << self
  if distance.class == Float
    @distance = distance
  else
    @distance = distance.to_f
  end
end

def self.all
  @@all
end

end
