class Guest
    
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end    

    def self.all
        @@all
    end    

    def new_trip(listing)
        Trip.new(self, listing)
    end    

    def trips
        Trip.all.select { |trip| trip.guest == self }
    end    

    def listings
        self.trips.map { |trip| trip.listing }.uniq
    end    

    def trip_count
        self.trips.count
    end    

    def self.pro_traveller
        self.all.select { |guest| guest.trip_count > 1 }
    end    

    def self.find_all_by_name(sought_name)
        self.all.select { |guest| guest.name == sought_name }
    end    




end    