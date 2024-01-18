require_relative '../lion'

describe Lion do
  describe '#talk' do
    it 'returns "Tiger roars"' do
      tiger = Lion.new("Tiger")
      expect(tiger.talk).to eq("Tiger roars")
    end

    it 'returns "Steve roars"' do
      steve = Lion.new("Steve")
      expect(steve.talk).to eq("Steve roars")
    end
  end

  describe '#eat(food)' do
    it 'returns "Steve eats a Snickers"' do
      steve = Lion.new('Steve')
      expect(steve.eat("a Snicker's")).to eq("Steve eats a Snicker's. Law of the Jungle!")
    end

    it 'returns "Peanut eats a cashew"' do
      peanut = Lion.new('Peanut')
      expect(peanut.eat('a cashew')).to eq("Peanut eats a cashew. Law of the Jungle!")
    end
  end
end
