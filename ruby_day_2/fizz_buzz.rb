array = [] # Array.new

for number in 1..100
  if number % 3 == 0 && number % 5 == 0
    array.push "FIZZBUZZ"
  elsif number % 5 == 0
    array.push "BUZZ"
  elsif number % 3 == 0
    array.push "FIZZ"
  else
    array.push number
  end
end

print array
