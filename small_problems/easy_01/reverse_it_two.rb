
require "pry"
def reverse_words_two(words)
  words = words.split
  accu = []
  words.each do  |word, indx| 
    if word.length >= 5
      accu << word.reverse!
    else
      accu << word
    end
  end
   puts accu.join(" ")
end

 reverse_words_two("Professional")          # => lanoisseforP
 reverse_words_two("Walk around the block") # => Walk dnuora the kcolb
 reverse_words_two("Launch School")         # => hcnuaL loohcS


# each word comes in as a string.
# we split the word and return an array of words. Included spaces dictate a new word.
# ["word"] 1- word ["hello", "world"] 2- words etc
# if a  word contains more than five characters - reverse the word.
# if a  word has less than 5 chars leave word as is and test the next.