def sum_of_sums(arr)
  temp = arr.dup
  accu = 0

  until temp.empty?
    accu += temp.sum
    temp.pop
  end
  accu
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35


# take an array of digits
# return the sum of each leading subsequence

# strategy
# duplicate the array argument so as to not mutate the passed in data structure, add the total sum of array values to an accumulator then pop one value from the temp array, repeat until temp is empty. return accumulator

