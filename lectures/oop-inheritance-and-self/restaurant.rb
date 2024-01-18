require_relative 'chef'

class Restaurant
  self # refers to the Restaurant class

  def instance_method
    self # refers to the instance
  end

  attr_reader :reservations, :name

  # Class method - for behaviors that applies to the Restaurant class
  # We want to be able to retrieve the list of categories in the app, even if there was no instance of Restaurant yet
  def self.categories
    %w[burger sushi italian french mexican japanese thai]
  end

  # The initialize is called when you use Restaurant.new
  def initialize(name, capacity, address, category, chef_name=nil)
    # STATE (attributes)
    # @instance_variables
    @name = name # string
    @capacity = capacity # integer
    @address = address # string
    @category = category # string
    @chef = Chef.new(chef_name, self) # self refers to the instance that we are currently initializing

    @reservations = []
  end

  # BEHAVIOR
  # instance methods
  def make_reservation(name)
    self # represents the instance that was on the left of `.make_reservation`
    @reservations << name
  end
end
