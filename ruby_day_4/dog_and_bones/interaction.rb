load "./bone.rb"
load "./dog.rb"

dog = Dog.new("Yellow", "Lab")

b1 = Bone.new("Small")
b2 = Bone.new("Medium")
b3 = Bone.new("Large")
b4 = Bone.new("Extra Large")

dog.give(b1)
dog.give(b2)
dog.give(b3)
dog.give(b4)
dog.eat
dog.give(b4)
dog.eat
