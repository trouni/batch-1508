require_relative "chef"
require_relative "restaurant"
require_relative "fast_food_restaurant"


burger_king = FastFoodRestaurant.new("Burger King", 120, "Louisville", "burger", 3)
burger_king.make_reservation("Yoshio")

burger_king_meguro = FastFoodRestaurant.new("Burger King", 20, "Meguro", "burger", 3)

chef = Chef.new("Trouni", burger_king_meguro)

chuck = Restaurant.new("Chuck E. Cheese", 100, "Louisville", "italian")
chuck.make_reservation("Jason")
chuck.make_reservation("Dan")

[chuck, burger_king].each do |restaurant|
  puts "#{restaurant.name} has #{restaurant.reservations.size} reservation(s)."
end
