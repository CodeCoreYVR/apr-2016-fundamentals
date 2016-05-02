class Rectangle

  attr_accessor :width, :height

  def initialize(the_width, the_height)
    @width, @height = the_width, the_height
  end

  def area
    # this called the public methods genertated by attr_accessor
    width * height
  end

end
