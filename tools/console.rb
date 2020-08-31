require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jason = Guest.new("Jason")
rachel = Guest.new("Rachel")

osaka = Listing.new("Osaka")
tokyo = Listing.new("Tokyo")

Pry.start
