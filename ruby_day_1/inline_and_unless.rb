print "Give me a number: "
number = gets.to_f

if number > 100
  puts "The number is large"
end

# this is called inline conditional in Ruby
# no need for `end` in this case
puts "The number is large" if number > 100

puts "The number is large" unless number <= 100
