print "Give me a number "
number = gets.to_f

# if number > 10
#   puts "Hello World!"
# end
#
# # we call (number > 10) an expression
# if number > 10
#   # the code will be executed if the expression in the `if` is true
#   puts "The number is large"
# else
#   # the code will be executed if the expression in the `if` is false
#   puts "The number is small"
# end

# you can use elsif if you have multiple conditions. You can only have
# one `if` and one `else` but you can have as many `elsif` as you wish
# if is required. elsif and else are optional
if number > 100
  puts "The number is large"
elsif number > 50
  puts "The number is medium"
elsif number > 20
  puts "The number is small"
else
  puts "The number is extra small"
end
