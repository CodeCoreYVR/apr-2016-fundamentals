# solution 1
puts "First number"
first_number = gets.chomp

puts "Second number"
second_number = gets.chomp

puts second_number.to_f * first_number.to_f

# Solution 2
puts "First number"
first_number = gets.chomp.to_f # you can also do: gets.to_f

puts "Second number"
second_number = gets.chomp.to_f # you can also do: gets.to_f

puts "The result is #{second_number * first_number}"
