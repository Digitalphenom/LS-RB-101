require 'pry'
def block_word?(word)
  letters = word.chars
  collection =  %w{B O X K D Q C P N A}, %w{G T R E F S J W H U}, %w{V I L Y Z M}
  final = collection.map do |group|
    0..letters.size.times do |i|
      if group.include?(letters[i]) 
        return true
      else
        return false
      end
    end
  end
end

 p block_word?('BATCH') 
p block_word?('BUTCH') 
p block_word?('jest') 

# pass in a word
# return true if that word can be spelled with only one letter in the supplied data structure. false otherwise

# the data structure is as follows
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

