def titleize(sentence)
  if !sentence.is_a? String
    return ""
  end
  words = sentence.split
  words.each do |word|
    word.capitalize!
  end
  words.join(" ")
end

print "Give me a sentence: "
sentence = gets.chomp
puts titleize(sentence)
