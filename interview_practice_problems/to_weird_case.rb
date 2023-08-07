#Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the same string with all even indexed characters in each word upper cased, and all odd indexed characters in each word lower cased. The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased and you need to start over for each word.

#The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').
=begin

≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂(Problem)≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂
take a string and reuturn the original string with all values at even indexes converted to their uppercase equivalent and all odd values to downcase. value at index position 0 should be upcased.

● Explicit Requirements
  ⚬ Input: String
  ⚬ Output: New String
  ⚬ upcase all values at index positions that are even including 0
  ⚬ downcase all values at index positions that are odd
  ⚬ only dealing with alphabetic chars

● Implicit requirements
  ⚬ skip white-space chars and non alphabetic chars
  ⚬ 
≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂(Examples)≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂
 "Weird string case" => returns "WeIrD StRiNg CaSe"
 
≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂(Data Structures)≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂
[WeIrD, StRiNg, CaSe]
[word] [0,1,2,3] 

≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂(Algorithms)≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂
● seperate string by whitespace chars convert to an array of substrings

● access each word

● access each char
  ⚬ determine each char index position
● if even including 0
  ⚬ convert to upcase
● if odd
  ⚬ convert to downcase
● continue upto the size of array
● convert array back to a string 
=end

def weirdcase(str)
  arr = str.split
  arr.each do |word|
    (0...word.size).each do |indx_char|
      if indx_char.even?  
        word[indx_char] = word[indx_char].upcase 
      else
        word[indx_char] = word[indx_char].downcase
      end
    end 
  end
  arr.join(" ")
end
p weirdcase( "String" ) == "StRiNg"
p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"
