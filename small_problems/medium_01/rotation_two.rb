def rotate_array(array, n)
  temp = array.dup
  temp << temp.slice!(n)
end

def rotate_rightmost_digits(digits, n)
  arr = digits.digits.reverse
  rotate = rotate_array(arr, -n)

  result = 0
  rotate.each { |num| result = result * 10 + num }
  result
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917