# Write a code that takes a number and then prints the power of three to that number if it's divisible by three and it print the power of two if it's divisible by 2 and prints the number itself otherwise.
print "Give us a number: "
number = gets.to_i

if number % 3 == 0
  puts number ** 3
elsif number % 2 == 0
  puts number ** 2
else
  puts number
end


# a = if number % 3 == 0
#       number ** 3
#     elsif number % 2 == 0
#       number ** 2
#     else
#       number
#     end
# puts a
