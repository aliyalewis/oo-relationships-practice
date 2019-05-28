require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

g1 = Guest.new("Aliya")
g2 = Guest.new("Cody")
g3 = Guest.new("Tracy")

l1 = Listing.new("Seattle")
l2 = Listing.new("Brooklyn")
l3 = Listing.new("Dixon")

t1 = Trip.new(l1, g1)
t2 = Trip.new(l2, g1)
t3 = Trip.new(l1, g2)
t4 = Trip.new(l3, g3)


Pry.start
