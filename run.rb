require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

# ZOOS

bronx_zoo = Zoo.new("Bronx Zoo", "The Bronx")
brooklyn_zoo = Zoo.new("Brooklyn Zoo", "Brooklyn")


# ANIMALS

geoffrey = Animal.new("Giraffe", 2000, "Geoffrey", bronx_zoo)
steve = Animal.new("Giraffe", 2050, "Steve", bronx_zoo)
wolfenstein = Animal.new("Wolf", 300, "Wolfenstein", brooklyn_zoo)
wolfy = Animal.new("Wolf", 325, "Wolfy", bronx_zoo)
alf = Animal.new("Alien Life Form", 40, "Alf", brooklyn_zoo)
yoda = Animal.new("Alien Life Form", 20, "Yoda", brooklyn_zoo)
donkey = Animal.new("Donkey", 500, "Dominic", bronx_zoo)


binding.pry
puts "done"
