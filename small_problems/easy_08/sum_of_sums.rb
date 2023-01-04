
def sum_of_sums(array)
  accu = []
  size =  array.size
  count = 0
  
  until count == size
    accu << array.dup
    array.pop
    count += 1
  end
  accu.flatten.sum
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35


# take an array of digits
# return the sum of each leading subsequence

# strategy
# add each digit in order of 12345 etc the final number being the length of array.
# each digit should be added once for every number count. the result values will appended to an accumulator array. grab the result of adding all values froma accumulator.

#tactic
#  (3) + (3 + 5) + (3 + 5 + 2) 
#   1       2            3
# you can iterate through the array with and index starting at 1
# perform addition by index.
# how does index addition look like?
# 

# to make things even simpler using a loop add the number 1 2 3 to an array in this pattern:
#  acc << 1 ; acc << 1,2 ; acc << 1, 2, 3

