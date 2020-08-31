class Listing
    
    attr_accessor :city

    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end    

    def self.all
        @@all
    end
    
    def new_trip(guest)
        Trip.new(guest, self)
    end
    
    def trips
        Trip.all.select { |trip| trip.listing == self }
    end    

    def guests
        self.trips.map { |trip| trip.guest }
    end    

    def trip_count
        self.trips.count
    end    

    def self.find_all_by_city(sought_city)
        self.all.select { |listing| listing.city == sought_city }.uniq
    end    

    def self.most_popular
        self.all.max_by { |times| self.all.count(times) }
    end    
end    