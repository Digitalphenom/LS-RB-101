
# 2/28/23 alternate approach using a loop to pop values 
def multiply_all_pairs(arr1, arr2)
  result = []
  temp1 = arr1.dup
  inner_count = 0

  loop do
    check = temp1.shift
    loop do
      result << check * arr2[inner_count]
      break if inner_count == 3
      inner_count += 1
    end
    break if temp1.empty?
    inner_count = 0
  end
  result.sort
end

def multiply_all_pairs(multiplier, list)
  result = []

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

