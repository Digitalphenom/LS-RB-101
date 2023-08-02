
# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

# Explicit Requirements
# Input: String
# Output: String
# Every other char should be converted to its uppercase equivalent
# non-alphabetic chars should count as chars when switching between upper & lower case
# Index position begins at 0 with first char capitalized
# A new string should be returned

# Implicit Requirements
# whitespaces count as chars
# digits do not count as chars 

# Test Cases
# - 'I LoVe lAuNcH ScHoOl!'
# - 'AlL_CaPs' 0_1_0x1_0_1_0_1
# 'IgNoRe 77 ThE 444 NuMbErS'

# Access each individual char and determine its index position
# keep track of whether the previous char was either a alphabetic char non non-alphabetic char
# set a variable as nil
# if it is an alphabetic char set variable as true & uppercase 
# if it is not an alphabetic char set variable to false & downcase
# if integers next

# Data Structure
# each incoming string will contain upper & lower case chars in no particular order

def staggered_case(str, ii)
  str.chars.map.with_index(ii) do |char, ii|
    (ii.even? || ii.zero?) ? char.upcase : char.downcase
  end.join
end

p staggered_case('I Love Launch School!', 0) #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', 0) #== 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', 1) #== 'IgNoRe 77 ThE 444 NuMbErS'