
# take a string of characters
# return a hash with each (words length) and the (times it occurs)

# STRATEGY
# break down string chars into words, traverse through each word and determine its size, check the total times it occurs within collection. insert values into a hash where size is a key and occurences is a value.

def word_sizes(string)
  words = string.split
  hash = Hash.new(0)

  words.each do |word|
    hash[word.size] += 1
  end
  hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}