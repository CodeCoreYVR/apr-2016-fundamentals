loop do # this will be an infinite loop so you must have a `break` somewhere
  puts "Guess a number: "
  number = gets.to_i
  if number > 100
    puts "Awesome!"
    break
  end
end
