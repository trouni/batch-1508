# INHERITANCE
class ChildClass < ParentClass
  # The ChildClass inherits all the state and behavior from the ParentClass
end

# Alternative names:
class SubClass < SuperClass
end

# INSTANCE METHODS
# We need an instance to call these methods
restaurant.make_restaurant
car.color
dog.name
another_dog.name
restaurant.name

# CLASS METHODS
# We use class methods that doesn't rely on an instance
CSV.for_each
Time.now
JSON.parse
Restaurant.destroy_all
Restaurant.new
Restaurant.filter_by_city('Tokyo')
