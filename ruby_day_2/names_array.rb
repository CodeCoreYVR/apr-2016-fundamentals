names     = ["carlos", "charlotte", "Tam", "john", "tom"]
cap_names = []

names.each do |name|
  cap_name = name.capitalize
  puts cap_name
  cap_names.push cap_name
end

puts names
