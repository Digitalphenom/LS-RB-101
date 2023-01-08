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
# not sure what the math concept is but basically what theyre asking is to rotate a given number the maximum amount of times possible. from looking at the patterns of the correct return values given. You do this by rotating each number from 0 to -2.
# but its a little trickiet than that because each new rotation does not begin at 0.
# it skips from 1, to 2, then 3 and so on until youve rotated the final number which is -2.

# example:=>
# => (7)35291, 35291(7)
# => 3(5)2917, 32917(5)
# => 32(9)175, 32175(9)
# => 321759
# notice that the final rotatable number to receive the correct answer is -2 (9)
# I tested this and it is true for all answers.

# based on this a general strategy would be:
# select the first digit and move it to the end.
# continue to do this ignoring digits you have already moved
# stop once -2 has been moved. -2 from the initial value pair.

# repurposing methods from the previous exercises you would need to change the order by which the methods move values. The rightmost method moves digits beginning from the end of array. you would need to change this to move digits from the beginning. the supplied n digit resembles the action of skipping moved values.
# you would need to repurpose that action so that it happens automatically from within the method.