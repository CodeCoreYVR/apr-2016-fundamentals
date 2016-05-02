# We use the `class` keyword to define a class
# We put the class name after the `class` keyword
# class names must start with a capital letter because classes are constants
# convention is to use: CamelCase
class Cookie

  # the method `initialize` will be used when creating a new object.
  # for instance when you do: Cookie.new
  def initialize(sugar, flour_amount)
    @sugar = sugar
    @flour = flour_amount
    puts "I'm inside the Cookie's initialize method"
  end

  # this is called a GETTER method
  def sugar
    @sugar
  end

  attr_reader :flour
  # this is equivalent to:
  # def flour
  #   @flour
  # end

  def change_sugar(new_amount)
    @sugar = new_amount
  end

  def sugar=(new_amount)
    @sugar = new_amount
  end

  attr_writer :flour
  # this is equivalent to:
  # def flour=(new_amount)
  #   @flour = new_amount
  # end

  attr_accessor :butter
  # is equivalent to:
  # attr_reader :butter
  # attr_writer :butter

  def details
    puts "This cookie has #{@sugar}g of sugar and #{@flour}g of flour"
  end

  # this defines a class method which is a method that can be called directly
  # on the class without the need to instantiate a new object:
  # Cookie.info
  def self.info
    puts "This is a class that will make cookies!"
  end

  # this defines a `public` instance method (obejct method). These methods
  # can only be called on instances of the `Cookie` class:
  # c = Cookie.new
  # c.eat
  def eat
    puts @sugar
    puts "Eating the cookie!"
  end

  def bake(minutes = 0)
    mix
    puts "Baking the cookie for #{minutes} minutes"
  end

  def bake_and_eat
    bake
    eat
  end

  # every method that is defined after this `private` keyword. Will be a
  # private method
  private

  def mix
    puts "Mixing the cookie dough"
  end

end
