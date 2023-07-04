# 7/3/23

# GOAL
# given a lower cased string, return the same string with each words first char uppercased

# STRATEGY
# convert string into an array of substrings seperated by white spaces, access each substring then access the first char, replace the first char with its uppercase equivalent, convert array back into a single string.

words = "the flintstones rock"
arr = words.split

arr.each.with_index do |word, i|
  arr[i][0] = word[0].upcase
end

p arr.join(" ")


#------------------------
words = "the flintstones rock"
arr = words.split
count = 0

loop do
  arr[count][0] = arr[count][0].upcase
  count += 1
  break if arr.size == count  
end

p arr.join(" ")

#------------------------

words = "the flintstones rock"
arr = words.split

arr.map! do |word|
  word[0].upcase + word[1..-1]
end
p arr.join(" ")

#------------------------

words = "the flintstones rock"

result = 
words.split.map do |word| 
  
end.join(" ")

p result

# --------------------------

words = "the flintstones rock"

result = 
words.split.each { |word| word[0] = word[0].capitalize}.join(" ")
p result

# --------------------------

# old solution

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



