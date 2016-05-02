load "./cookie.rb"

# We're defining an `Oreo` class in here that inherits from the `Cookie` class
# Oreo class inherits all the methods and attributes (reader / writer / accessor)
class Oreo < Cookie
  attr_accessor :filling_type

  # this redefines the `details` method only for objects of the Oreo class
  def details
    puts "This Oreo Cookie has #{filling_type} filling type, #{sugar}g of sugar and #{flour}g of flour"
  end
end
