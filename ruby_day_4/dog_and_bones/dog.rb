class Dog

  MAX_BONES_CAPACITY = 3

  def initialize(color, type)
    @color = color
    @type  = type
    @bones = []
  end

  def give(bone)
    if @bones.length >= MAX_BONES_CAPACITY
      puts "I have too many bones"
    else
      @bones.push bone
    end
  end

  def eat
    bone = @bones.pop
    puts "yummy! I ate a #{bone.size} bone"
  end

end
