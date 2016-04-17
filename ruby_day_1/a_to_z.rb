counter = 1

"a".upto("z") do |letter|
  # counter.times {print letter}
  # print "\n"
  puts letter * counter
  counter += 1
end
