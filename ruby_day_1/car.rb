puts "What is the year of your car? "
year = gets.chomp.to_i

if year > 2016
  puts "The car is in the future"
elsif year > 2014
  puts "The car is quite new"
elsif year > 2010
  puts "The car is old"
else
  puts "The car is very old"
end
