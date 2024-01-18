class Animal
  attr_reader :name

  def self.phyla
    [
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
    ]
  end

  def initialize(name)
    @name = name
  end

  def eat(food)
    "#{name} eats #{food}"
  end
end
