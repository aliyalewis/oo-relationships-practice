require 'pry'

class Guest
attr_reader :name
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select do |trip|
      trip.guest == self
    end
  end

  def listings
    trips.collect do |trip|
      trip.listing
    end
  end

  def trip_count
    trips.count
  end

  def self.pro_traveller
    self.all.select do |guest|
      if guest.trip_count > 1
      guest.name
      end
    end
  end

  def self.find_all_by_name(name)
    self.all.find do |guest|
      guest.name == name
    end
  end


end
