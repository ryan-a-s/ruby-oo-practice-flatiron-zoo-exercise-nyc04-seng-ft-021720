class Zoo
    
    @@all = []
    
    attr_accessor :name, :location
    
    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def name
        @name
    end

    # should return an array of all the zoo instances
    def self.all
        @@all
    end

    # should return all the animals that a specific instance of a zoo has
    def animals
        Animal.all.select {|animal| animal.zoo == self}
    end

    # should return an array of all the species (as strings) of the animals in the zoo
        # However,if you have two dogs, it should only return one "Dog" string (aka an **unique** array)
    def animal_species
        animals.map {|animal| animal.species}.uniq
    end

    # should take in an animal's species as an argument and return an array of all the 
    # animals in that zoo, which are of that species.
    def find_by_species(species)
        animals.select {|animal| animal.species}
    end

    # should return an array of all the nicknames of animals that a specific instance of a zoo has
    def animal_nicknames
    #    animals = 
       animals.select {|animal| animal.nickname}
    #    animals.map {|animal| animal.nickname}
    end

    # should take in a location as an argument and return an array of all the zoos within that location.
    def self.find_by_location(zoo_location)
        Zoo.all.select {|zoo| zoo.location == zoo_location}
    end

end