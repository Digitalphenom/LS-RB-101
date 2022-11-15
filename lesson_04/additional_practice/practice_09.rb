words = "the flintstones rock"

words = words.split(" ")
words.each_with_index do |word, index|
   words[index] = word.capitalize!
end

p words.join(" ")

# a simpler solution would be to chain on methods. 
# instead of splitting then reassigning I could words.split.map
# remember map returns a new array.
#words.split.map { |word| word.capitalize }.join(' ')



