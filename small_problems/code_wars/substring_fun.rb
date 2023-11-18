=begin
Complete the function that takes an array of words.
You must concatenate the nth letter from each word to construct a new word which should be returned as a string,
where n is the position of the word in the list.
For example:
["yoda", "best", "has"] --> "yes"
^ ^ ^
n=0 n=1 n=2
Note: Test cases contain valid input only - i.e. a string array or an empty array; and each word will have enough letters.


⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ 𝓟roblem ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄
Given an input array of words, return the current char starting at index position 0 and incrementing by 1 for each word in the array.

  if arr is empty return ""
  if single word return 0 => char

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Examples ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

'yoda', 'best', 'has' = 
[0 => y] + [1 => e] + [2 => s] => yes

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟DataStructure ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

Input: Array of words

Intermediary: 
  Access each word
  Transform each word to its current index position char 
  Convert arr to string
Output: String

⋄≂≂▫≂≂▫≂≂▫≂▫≂▫≂≂▫≂≂▫≂⋄—◟ Algorithm ◞—⋄≂▫≂≂▫≂≂▫≂≂▫≂▫≂≂▫≂≂▫≂≂≂⋄

▣ Return "" if arr empty
▣ Access each word
  □ access the character at the current index position
  □ Transform word based on the return value of the block
  □ Repeat for each word upto size of array
▣ Transform array into String
▣ Return String

=end

def nth_char(arr)
  arr.map.with_index { |word, i| word[i] }.join
end

p nth_char(['yoda', 'best', 'has'])# == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) == 'Codewars'
