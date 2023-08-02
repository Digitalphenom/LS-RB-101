
# Problem
# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged. 

#You may not use String#swapcase; write your own version of this method.

# Explicit Requirements
# Input: String
# Output: String
# downcase every upcase char
# upcase every downcase char
# Do not use #swapcase
# Return new string

# Implicit Requirements
# skip non alphabetic chars

# Algorithm
# access each char
# determine if it uppercase or lowercase
#   determine if uppercase by calling include on array of uppercase chars
# if uppercase then downcase 
# if downcase  then upcase
# distinguish between alphabetic chars and non alphanetic chars
# if non alphabetic char go next
# return new string

# solution using downcase upcase methods 

def swapcase(str)
  str.chars.map do |char|
    ("A".."Z").to_a.include?(char) ? char.downcase : char.upcase
  end.join
end


p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# -----------------------------------------------------------

 def letter_map
   letter_map = Hash.new
   ("A".."Z").each do |letter|
     key = letter
     value = (letter.ord + 32).chr
     letter_map[key] = value
   end
     letter_map
 end
 
 def swapcase(str)
   map = letter_map()
   str = str.chars
   arr = []
   str.each do |letter|
     if map.keys.include?(letter)
       arr << map[letter]
     elsif map.values.include?(letter)
       arr << map.key(letter)
     else
       arr << " "
     end
   end
     arr.join
 end
 
 swapcase('CamelCase') == 'cAMELcASE'
 swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
 
# -----------------------------------------------------------

 # 2/27/23
 
 def swapcase(str)
   str.chars.map do |char|
     if char.match?(/[A-Z]/)
       (char.ord + 32).chr
     elsif char.match?(/[a-z]/)
       (char.ord - 32).chr
     else
       char
     end
   end.join
 end