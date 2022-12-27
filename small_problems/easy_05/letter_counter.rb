
# take a string

# split string into array collection
# iterate through each word and count the letters in a word
# assign the value to a hash key.
# iterate through each word and determine how many words contain x amount of letters.
  # - how many words contain 4 letters within the array collection?
# assign the value to a hash value.

# return a hash that shows the number of letters in each word and its number of occurences

def word_sizes(string)
  values = []
  hash = {}

  string.split.each do |char|
    values << char.size
    hash[char.size] = hash[char.size]
  end

  values.each { |num| hash[num] = values.count(num) }
  hash
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 =>  2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
