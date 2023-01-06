def twice(digit)
  arr = digit.digits
  if arr.size.even?
    left, right = arr.each_slice(arr.size / 2).to_a
  end
  result = (arr.size.odd? || left != right) ? digit + digit : digit
  result
end


twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

# take a integer
# return * 2 if the digit is not a double, else return digit

# digits of odd size cannot be doubles.
# to test for double digits turn integers into array of digits. Remove half and compare them if even they are doubles

# 3 scenerios  to consider
# odd numbers not double
# even numbers not double
# even numbers double

#-------(before refactor)-----------

def twice(digit)
  arr = digit.digits.reverse
  half = arr.size / 2
  
  if arr.size.even?
  lft, rght = arr.each_slice(arr.size / 2).to_a
  end

  if arr.size.odd?
    result = digit + digit
  elsif lft != rght
    result = digit + digit
  else
    result =  digit
  end
  result
end


#-------(LS solution)-----------

def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end