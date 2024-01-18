require_relative "../animal"

describe Animal do
  describe "#initialize" do
    it "returns an instance of Animal" do
      animal = Animal.new("Peanut")
      expect(animal).to be_an(Animal)
    end
  end

  describe "#name" do
    it "returns the name of the animal" do
      animal = Animal.new("Peanut")
      expect(animal.name).to eq("Peanut")
    end
  end

  describe '#eat(food)' do
    it 'returns "Steve eats a Snickers"' do
      steve = Animal.new('Steve')
      expect(steve.eat("a Snicker's")).to eq("Steve eats a Snicker's")
    end

    it 'returns "Peanut eats a cashew"' do
      peanut = Animal.new('Peanut')
      expect(peanut.eat('a cashew')).to eq("Peanut eats a cashew")
    end
  end

  describe ".phyla" do
    it 'returns an array with all the phyla of the animal kingdom' do
      expect(Animal.phyla).to eq([
        "Phylum Porifera",
        "Phylum Coelenterata",
        "Phylum Platyhelminthes",
        "Phylum Nematoda",
        "Phylum Annelida",
        "Phylum Arthropoda",
        "Phylum Mollusca",
        "Phylum Echinodermata",
        "Phylum Protochordata",
        "Phylum Vertebrata"
      ])
    end
  end
end
