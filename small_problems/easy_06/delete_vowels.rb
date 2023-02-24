
def remove_vowels(arr)
  arr.map { |str| str.gsub(/[aeiouAEIOU]/,"") }
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
# Goal
# take an array of string chars
# return an array of string chars with vowels (a,e,i,o,u) removed

# Strategy
# iterate through array if char matches vowel remove, else keep.

# Tactics
# use the gsub! to replace chars with an empty char.

# => 2/23/23 took another stab at this one, interesting how answers differ

# take an array of strings
# return an array of the same string without vowels (a,e,i,o,u)

# STRATEGY
# scan chars if it contains a vowel, remove vowel. return new array.

#OBJECTIVES
# 1) iterate through each word
#   a) use #map to iterate through words
# 2) iterate through each char
#   a) use #reject to iterate through chars and return words that do not match (vowels)
# 3) if char matches (vowels) remove word
#   a) use #match? to check if word matches (vowels)
# 4) return array

def remove_vowels(arr)
  arr.map do |word|
    word.chars.map { |char| char.match?(/[aeiouAEIOU]/) ? char.chop : char }.join
  end
end

# I ran into issues using reject when no truthy values are present because map would return nil on that word group.
# the first attemp avoided having to access individual chars by using gsub!
# this attempt performed transformation on individual chars with line 38.