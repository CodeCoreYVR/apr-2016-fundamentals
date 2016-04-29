# Step 1: Take input from the user
print "Give me a sentence: "
sentence = gets.chomp

# Step 2: Split the string to an array of words
words = sentence.split

# Step 3: Apply `capitalize` to each element of the array
words.each do |word|
  word.capitalize!
end

# Step 4: Convert the array to a string by joining with spaces
puts words.join(" ")
