
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

