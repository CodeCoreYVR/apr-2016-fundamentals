class Cat
  attr_accessor :name

  def initialize(name  = "")
    @name = name
  end

  def catch_and_eat(bird)
    catch(bird)
    eat
  end

  def catch(bird)
    @caught_bird = bird
    puts "Bird #{bird.name} has been caught"
  end

  def eat
    if @caught_bird
      puts "Bird #{@caught_bird.name} has been eaten!"
      @caught_bird = nil
    else
      # No bird
      puts "No bird to eat"
    end
  end

end
