
require "pry"
def reverse_words_two(words)
  words.split.map do  |word| 
    word.length >= 5 ? word.reverse! : word
  end.join(" ")
end

 p reverse_words_two("Professional")          # => lanoisseforP
 p reverse_words_two("Walk around the block") # => Walk dnuora the kcolb
 p reverse_words_two("Launch School")         # => hcnuaL loohcS

# chain split and map to the calling object to return an array of words then iterate through each word. 
# if a  word contains more than five characters - reverse the word.
# if a  word has less than 5 chars leave word as is
# join the return value of the method