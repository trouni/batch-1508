require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'

animals = [
  Lion.new('Simba'),
  Lion.new('Steve'),
  Meerkat.new('Timon'),
  Warthog.new('Pumbaa'),
  Lion.new('Nalaa')
]

# `animals` is a polymorphic array (contains elements of various datatypes)
animals.each do |animal|
  # `animal` can be an instance of Lion, Meerkat or Warthog
  puts animal.talk # but we can call the `#talk` method on all of them!
end

# This is not always the case, for example, with the following polymorphic array:
[1, 2, 3, 4, 'text', { key: 'value'}].each do |element|
  # we would not be able to use `element.even?`
  # however, we could use `to_s` since all elements have that method:
  puts element.to_s
end
