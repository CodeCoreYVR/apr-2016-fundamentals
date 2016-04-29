# we use the `def` keyword to define a method and then we put the name
# after that.
# we follow the same naming conventions as variables.
def greet_me
  puts "Hello"
end

greet_me()
greet_me  # in Ruby round brackets to call a method are optional

# we call a and b arguments or parameters
# a and b are required arguemtns in this case
def multiply(a, b)
  a * b
end

puts multiply(10, 4)
puts multiply 11, 14
