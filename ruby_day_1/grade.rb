print "What score did you get? "
score = gets.to_f

if score > 100 || score < 0
  puts "Please provide a score between 0 and 100"
elsif score >= 86
  puts "you got A"
elsif score >= 73
  puts "You got a B"
elsif score >= 60
  puts "You got a C"
elsif score >= 50
  puts "You got a D"
else
  puts "You failed!"
end
