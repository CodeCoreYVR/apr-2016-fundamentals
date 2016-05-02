# 1. Ask the user for input
print "Give me a sentence: "
sentence = gets.chomp.downcase.gsub(" ","")

# 2. Split the string from the user to generate array of characters
letters = sentence.split("") # sentence.split(//)
# ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]

# 3. Generate a Hash of frequencies from the array
frequencies = Hash.new(0) # we give it a default value of 0 to make it easy
                          # to increment the frequency count
letters.each {|letter| frequencies[letter] += 1 }
# {"h" => 1, "e" => 1, "l" => 3, "o" => 2, " " => 1, "w" => 1, "r" => 1, "d" => 1}

# 4. Loop through the Hash of frequencies and store max value in a variable
max_value  = 0
max_letter = ""
frequencies.each do |letter, count|
  if count > max_value
    max_letter = letter
    max_value  = count
  end
end
# frequencies.sort_by {|k, v| v }[-1][0]

puts "The most recurring letter is: #{max_letter}"
