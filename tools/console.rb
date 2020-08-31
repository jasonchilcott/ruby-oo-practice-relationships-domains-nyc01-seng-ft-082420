require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# jason = Guest.new("Jason")
# rachel = Guest.new("Rachel")

# osaka = Listing.new("Osaka")
# tokyo = Listing.new("Tokyo")

cookie_bakery = Bakery.new("Cookie Bakery")
cake_bakery = Bakery.new("Cake Bakery")

chip_cookie = Desserts.new("Chocolate Chip Cookie", cookie_bakery)
thin_mint = Desserts.new("Thin Mint", cookie_bakery)

choc_cake = Desserts.new("Chocolate Cake", cake_bakery)
vanilla_cake = Desserts.new("Vanilla Cake", cake_bakery)

cookie_dough = Ingredients.new("Cookie Dough", chip_cookie, 200)
choc_chips = Ingredients.new("Chocolate Chips", chip_cookie, 100)

mint_dough = Ingredients.new("Mint Dough", thin_mint, 150)
choc_coating = Ingredients.new("Chocolate Coating", thin_mint, 100)

choc_batter = Ingredients.new("Chocolate Batter", choc_cake, 200)
choc_icing = Ingredients.new("Chocolate Icing", choc_cake, 250)

cake_batter = Ingredients.new("Cake Batter", vanilla_cake, 175)
vanilla_icing = Ingredients.new("Vanilla Icing", vanilla_cake, 225)


Pry.start
