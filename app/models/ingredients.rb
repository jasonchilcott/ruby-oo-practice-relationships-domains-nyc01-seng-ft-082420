class Ingredients
    
    attr_accessor :name, :dessert, :calories

    @@all = []

    def initialize(name, dessert, calories)
        @name = name
        @dessert = dessert
        @calories = calories.to_i
        @@all << self
    end

    def self.all
        @@all
    end  
    
    def bakery
        dessert.bakery
    end
    
    def self.find_all_by_name(i_n)
        self.all.select { |ingredient| ingredient.name.downcase.include?(i_n.downcase) }
    end    

end    