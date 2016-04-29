array = [[1,2,3], [4,5,6], [1,2,3], [4,5,6]]

array.flatten.each do |number|
  puts number * number
end
puts ">>>>"
array.each do |nested_array|
  nested_array.each do |num|
    puts num ** 2
  end
end
