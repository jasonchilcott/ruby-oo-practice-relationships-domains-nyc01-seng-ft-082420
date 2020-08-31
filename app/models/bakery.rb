class Bakery
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end    

    def self.all
        @@all
    end    

    def desserts
        Desserts.all.select { |dessert| dessert.bakery == self }
    end
    
    def ingredients
        self.desserts.map { |dessert| dessert.ingredients }
    end
    
    def average_calories
        all_calories = self.desserts.map { |dessert| dessert.calories }
        all_calories.sum / desserts.count
        #desserts.calories / desserts.count
    end
    
    def shopping_list
        shopping_items = self.ingredients.flatten.map { |ingredient| ingredient.name }
        shopping_items.join(", ")
    end

end    