numbers = [1,2,3,4]

new_numbers = numbers.map do |num|
                num + 5
              end
print new_numbers
puts ">>>>>>>>>>>>>>>>>>>>>>>>>"
new_numbers = numbers.each do |num|
                num + 5
              end
print new_numbers
