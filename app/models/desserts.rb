class Desserts
    
    attr_accessor :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end    

    def self.all
        @@all
    end
    
    def ingredients
        Ingredients.all.select { |ingredient| ingredient.dessert == self }
    end
    
    def calories
        self.ingredients.map.sum { |ingredient| ingredient.calories }
    end    


end    