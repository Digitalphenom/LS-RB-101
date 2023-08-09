#Complete the solution so that it returns the number of times the search_text is found within the full_text.

#Usage example:

#solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
#solution('aaabbbcccc', 'bbb') # should return 1

=begin

≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂(Problem)≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂⚬
● find search_text in supplied string
● return the substring count of search_text

Explicit Requirements
  ⚬ return substring count
  ⚬ input will be a string

≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂(Test Case)≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂

'aa_bb_cc_dd_bb_e', => ['bb', 'bb'] => 2
'aaabbbcccc', 'bbb' => ["bbb"] => 1

≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂(Algorithm)≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂≂

● access each char
● and form a pair with the subsequent char
● place this pair into a seperate collection
● then access the next char and form pair
  ⚬ a, a => [a, a] => a, a b => [a, a, b]
● continue this process until you have a array of all possible char combitnations

● access each pair
● determine a match
  ⚬ how to determine match? 

● once match is found
  ⚬ place matching pair into seperate collection
● continue this upto the size of collection
● this should result in all matching pairs collected into a seperate collection

● count total pairs
● return total count
=end

def solution(full_text, search_text)
  arr = full_text.chars
  pairs = []
  selected_pairs = []

  (0...arr.size).each do |indx|
    # review this to understand why index range works with inclusive here and not exclusive
    ((indx+1)..arr.size).each do |indx_two|
      pairs << arr[indx...indx_two]
    end
  end

  pairs.each do |pair|
    if pair.join == search_text

      selected_pairs << pair
    end
  end

  selected_pairs.count
end

solution('abcdeb','b') 
