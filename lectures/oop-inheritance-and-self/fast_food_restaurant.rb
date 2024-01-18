class FastFoodRestaurant < Restaurant
  def initialize(name, capacity, address, category, prep_time)
    super(name, capacity, address, category)
    @prep_time = prep_time # integer
  end

  def make_reservation(name)
    puts "Sorry #{name}, this is a fast food dude."
  end
end
