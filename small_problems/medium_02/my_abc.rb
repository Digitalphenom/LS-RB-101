BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

  block_word?('BATCH') 
 block_word?('BUTCH') 
 block_word?('jest') 

# pass in a word
# return true if that word can be spelled with only one letter in the supplied data structure. false otherwise

# the data structure is as follows
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:Urequire 'pry'



