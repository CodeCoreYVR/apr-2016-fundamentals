puts "input a number less than a 100"

x = gets.to_i

while x > 100
  puts "enter a number between 1 and a 100"
  x = gets.to_i
end

for number in x..100
  puts number
end

puts "The End!"
