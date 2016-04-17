true_number = rand(100)

guesses_count = 0

loop do
  print "You have gussed #{guesses_count} time(s)"
  puts "Guess a number between 1 and 100"
  number = gets.to_i
  if number == true_number
    puts "Well done!"
    break
  elsif number > true_number
    puts "Guess Lower"
  else
    puts "Guess Higher"
  end
  guesses_count += 1
end
