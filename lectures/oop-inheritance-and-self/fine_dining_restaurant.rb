class FineDiningRestaurant < Restaurant
  def initialize(name, capacity, address, category, stars)
    # `super` calls the method of the same name in the parent class
    # e.g. if I call it from the `#initialize`, it will call the `Restaurant#initialize`
    super(name, capacity, address, category)

    @stars = stars
  end

  def make_reservation(name)
    super # automatically forward the params (i.e. `name`) to the parent method
    # To avoid passing anything, call `super()`
    puts "Thank you #{name}, for this reservation."
  end
end
