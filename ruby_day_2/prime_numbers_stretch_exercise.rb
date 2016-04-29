print "Give us a number: "
number = gets.to_i

counter = 0

current_number = 2

# counter will let us know the number of prime numbers we found so we will need
# to incremrent counter by 1 every time we find a prime numer
while counter <= number

  for i in 2..current_number
    if current_number % i == 0
      break
    end
  end

  # this is a sitatuion where the for loop has reached the end which means
  # the number `current_number` is prime.
  if i == current_number
    puts current_number
    # prime number found
    counter += 1
  end
  current_number += 1
end
