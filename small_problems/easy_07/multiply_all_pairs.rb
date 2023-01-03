def multiply_all_pairs(multiplier, list)
  result = []
  i = multiplier.size
  list.each do |num|
    result << multiplier[0] * num
    result << multiplier[1] * num
  end
  result.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# take an array of 2 pairs of digits
# return a sorted (low-high) new array of the result of multiplying each array1 digits with all array2 digits.

# strategy
# access multiplyer digit 1 and iterate through list multiplying and capturing the result in a new array. Repeat for multiplyer digit 2

