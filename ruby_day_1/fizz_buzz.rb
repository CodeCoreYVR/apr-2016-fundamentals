for number in 1..100
  if number % 3 == 0 && number % 5 == 0
    puts "FIZZBUZZ"
  elsif number % 3 == 0
    puts "FIZZ"
  elsif number % 5 == 0
    puts "BUZZ"
  else
    puts number
  end
end
