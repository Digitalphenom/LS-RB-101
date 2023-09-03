def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(nums, n)
 digit_arr = nums.digits.reverse
 sliced = digit_arr[-n..-1] #  0...-n..-1
 
 (digit_arr[0...-n] + rotate_array(sliced)).join.to_i #  0...-n..-1
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917