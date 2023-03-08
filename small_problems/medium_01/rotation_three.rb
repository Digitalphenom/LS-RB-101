def max_rotation(digits)
  arr = digits.digits.reverse
  temp = arr.dup

  temp.each.with_index do |num, i|
   temp << temp.slice!(i)
  end
  temp.join.to_i
end

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

# take a set of integers
# return the maximum rotation

# what is the maximum rotation of a digit?
# not sure what the math concept is but basically what theyre asking is to rotate a given number the maximum amount of times possible. from looking at the patterns of the correct return values given. You do this by rotating each number starting from one to the end of array.

# example:=>
# => (7)35291, 35291(7)
# => 3(5)2917, 32917(5)
# => 32(9)175, 32175(9)
# => 321(7)59, 32159(7) 
# => 3215(9)7, 32157(9) 
# => 321579

# based on this a general strategy would be:
# select the first digit and move it to the end.
# continue to do this until the end of the array

# repurposing methods from the previous exercises you would need to change the order by which the methods move values. The rightmost method moves digits beginning from the end of array. you would need to change this to move digits from the beginning. the supplied n digit resembles the action of skipping moved values.
# you would need to repurpose that action so that it happens automatically from within the method.

# alternative
#3/7/23
def rotate_rightmost_digits(digits, n)
  result = digits.to_s.chars

  until n == result.size
    digit_to_insert = result.delete_at(n-1)
    result << digit_to_insert
    n += 1
  end
  result.join.to_i
end

def max_rotation(digits)
  count = 1
  rotate_rightmost_digits(digits, count)
end

# I found it easier to solve it without using the previous methods. not sure if this is the best approach however.